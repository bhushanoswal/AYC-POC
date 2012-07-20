class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :id
      t.string :name
      t.string :gender
      t.string :locale
      t.date :birthday
      t.string :email
      t.string :interested_in
      t.string :religion

      t.timestamps
    end
  end
end
