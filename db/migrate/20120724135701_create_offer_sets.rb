class CreateOfferSets < ActiveRecord::Migration
  def change
    create_table :offer_sets do |t|
      t.integer :ayc_offer_set_id
      t.integer :offer_id
      t.boolean :required_flag
      t.integer :display_order
      t.time :reg_delay

      t.timestamps
    end
  end
end
