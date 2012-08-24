class CreateVaccines < ActiveRecord::Migration
  def change
    create_table :vaccines do |t|
      t.string :name
      t.date :fact
      t.string :planning
      t.string :periodic
      t.date :plan

      t.timestamps
    end
  end
end
