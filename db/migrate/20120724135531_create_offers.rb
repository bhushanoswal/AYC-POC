class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :nick_name
      t.string :name_api_server
      t.boolean :redirectable_flag
      t.string :status

      t.timestamps
    end
  end
end
