class AycSet < ActiveRecord::Base
  attr_accessible :ayc_offer_set_id, :session_id

  belongs_to :session
  belongs_to :ayc_offer_set
end
