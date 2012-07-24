class User < ActiveRecord::Base
  attr_accessible :uid, :username, :first_name, :email, :password, :age, :gender, :location, :relationship_status, :interested_in, :birthday, :status, :country, :picture, :password_salt
  has_many :sessions

  before_save :encrypt_password
  validates :password, :length => {:within => 6..40}

  def self.create(client)
    info = client.selection.me.info!
    picture = client.selection.me.picture
    country = client.fql.query("SELECT current_location FROM user WHERE uid = #{info.id}")
    country = country.data.data
    country =  country.to_s.split(/country="/)[1]
    country = country.to_s.split(/"/)[0]
    if user = self.find_by_uid(info.id)
      user = self.store_data(user, info, country, picture)
      user
    else
      user = self.new
      user = self.store_data(user, info, country, picture)
      user
    end
  end

  def self.store_data(user, info, country, picture)
    user.uid = info.id
    user.username = info.username
    user.first_name = info.first_name
    user.email = info.email
    user.password = "12ab34kjl132kjl678ljk"
    user.age = self.age(self.date(info.birthday))
    user.gender = info.gender
    if (info.location).nil?
      user.location = ""
    else
      user.location = info.location.name
    end
    user.relationship_status = info.relationship_status
    user.interested_in = info.interested_in[0]
    user.birthday = self.date(info.birthday)
    user.country = country
    user.picture = picture
    user.save
    user
  end

  def self.date(date)#convert date format
    date = date.split("/")[1]+"-"+date.split("/")[0]+"-"+date.split("/")[2]
    date.to_date
  end

  def self.age(dob)
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end

  def encrypt_password
    if password.present?
      self.password_salt = BCrypt::Engine.generate_salt
      self.password = BCrypt::Engine.hash_secret(password, password_salt)
    end
  end

end
