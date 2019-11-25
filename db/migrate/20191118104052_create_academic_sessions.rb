class CreateAcademicSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :academic_sessions do |t|
      t.string :title
      t.date :from
      t.date :to

      t.timestamps
    end
  end
end
