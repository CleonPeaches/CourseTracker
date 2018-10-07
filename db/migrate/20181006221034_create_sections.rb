class CreateSections < ActiveRecord::Migration[5.1]
  def change
    create_table :sections do |t|
      t.references :course, foreign_key: true
      t.string :semester
      t.string :number
      t.string :room

      t.timestamps
    end
  end
end
