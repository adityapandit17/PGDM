class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :code
      t.string :faculty
      t.references :academic_session, foreign_key: true

      t.timestamps
    end
  end
end
