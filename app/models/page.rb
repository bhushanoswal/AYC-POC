class Page < ActiveRecord::Base
  attr_accessible :css, :html, :js, :type
  has_many :page_flows
  has_many :flows, :through => :page_flows
end
