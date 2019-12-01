class ChangeSubjectIdsToArray < ActiveRecord::Migration[5.2]
  def change
    change_column :no_dues, :subject_ids, "varchar[] USING (string_to_array(subject_ids, ','))"
  end
end
