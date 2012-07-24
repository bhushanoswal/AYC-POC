class PageFlow < ActiveRecord::Base
  attr_accessible :display_order, :flow_id, :page_id
  belongs_to :flow
  belongs_to :page
end
