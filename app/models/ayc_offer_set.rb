class AycOfferSet < ActiveRecord::Base
  attr_accessible :default_flag, :end_time, :forcing_id, :limit, :nick_name, :priority, :start_time, :status
  has_many :offer_sets
  has_one :ayc_set
  has_many :offers, :through => :offer_sets
end
