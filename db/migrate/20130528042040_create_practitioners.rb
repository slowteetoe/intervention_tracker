class CreatePractitioners < ActiveRecord::Migration
  def change
    create_table :practitioners do |t|
      t.string :specialty
      t.string :name

      t.timestamps
    end
  end
end
