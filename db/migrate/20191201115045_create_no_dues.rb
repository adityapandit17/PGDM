class CreateNoDues < ActiveRecord::Migration[5.2]
  def change
    create_table :no_dues do |t|
      t.references :user, foreign_key: true
      t.references :academic_session, foreign_key: true
      t.string :subject_ids

      t.timestamps
    end
  end
end
