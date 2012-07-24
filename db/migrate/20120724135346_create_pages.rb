class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.integer :type
      t.text :html
      t.text :js
      t.text :css

      t.timestamps
    end
  end
end
