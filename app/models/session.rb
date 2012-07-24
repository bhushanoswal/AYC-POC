class Session < ActiveRecord::Base
  attr_accessible :user_id

  belongs_to :user
  has_one :ayc_set
  has_one :ayc_flow
end
