class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :username
      t.string :email
      t.string :first_name
      t.string :password
      t.string :password_salt
      t.integer :age
      t.string :gender
      t.string :location
      t.string :relationship_status
      t.string :interested_in
      t.date :birthday
      t.string :status
      t.string :country
      t.string :picture

      t.timestamps
    end
  end
end
