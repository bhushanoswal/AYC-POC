class CreateFlows < ActiveRecord::Migration
  def change
    create_table :flows do |t|
      t.string :nick_name
      t.datetime :start_time
      t.datetime :end_time
      t.string :status
      t.integer :limit
      t.boolean :default_flag
      t.string :forcing_id
      t.integer :priority

      t.timestamps
    end
  end
end
