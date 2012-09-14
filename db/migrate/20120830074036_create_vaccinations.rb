class CreateVaccinations < ActiveRecord::Migration
  def change
    create_table :vaccinations do |t|
      t.integer :person_id
      t.integer :vaccine_id
      t.date :plan
      t.date :fact

      t.timestamps
    end
  end
end
