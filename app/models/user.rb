class User < ActiveRecord::Base
  attr_accessible :birthday, :email, :gender, :id, :interested_in, :locale, :name, :religion
end
