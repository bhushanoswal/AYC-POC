class CreateAycFlows < ActiveRecord::Migration
  def change
    create_table :ayc_flows do |t|
      t.integer :session_id
      t.integer :flow_id

      t.timestamps
    end
  end
end
