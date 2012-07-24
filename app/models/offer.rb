class Offer < ActiveRecord::Base
  attr_accessible :name_api_server, :nick_name, :redirectable_flag, :status
  has_many :offer_sets
  has_many :ayc_offer_sets, :through => :offer_sets
end
