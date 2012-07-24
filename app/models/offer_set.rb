class OfferSet < ActiveRecord::Base
  attr_accessible :ayc_offer_set_id, :display_order, :offer_id, :reg_delay, :required_flag
  belongs_to :offer
  belongs_to :ayc_offer_set
end
