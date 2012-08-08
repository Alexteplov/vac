class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :surname
      t.date :birthday
      t.string :card_number
      t.string :service_place
      t.string :rank

      t.timestamps
    end
  end
end
