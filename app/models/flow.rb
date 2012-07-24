class Flow < ActiveRecord::Base
  attr_accessible :default_flag, :end_time, :forcing_id, :limit, :nick_name, :priority, :start_time, :status
  has_many :page_flows
  has_one :ayc_flow
  has_many :pages, :through => :page_flows

end
