class AycFlow < ActiveRecord::Base
  attr_accessible :flow_id, :session_id
  belongs_to :session
  belongs_to :flow
end
