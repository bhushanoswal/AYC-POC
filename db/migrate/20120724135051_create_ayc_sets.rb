class CreateAycSets < ActiveRecord::Migration
  def change
    create_table :ayc_sets do |t|
      t.integer :session_id
      t.integer :ayc_offer_set_id

      t.timestamps
    end
  end
end
