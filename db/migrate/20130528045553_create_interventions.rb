class CreateInterventions < ActiveRecord::Migration
  def change
    create_table :interventions do |t|
      t.string :grouping
      t.string :name
      t.decimal :cost

      t.timestamps
    end
  end
end
