class CreatePageFlows < ActiveRecord::Migration
  def change
    create_table :page_flows do |t|
      t.integer :page_id
      t.integer :flow_id
      t.integer :display_order

      t.timestamps
    end
  end
end
