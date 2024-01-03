class ChangeHealthRecordsNotNull < ActiveRecord::Migration[7.1]
  def change
    change_column_null(:health_records, :health_treatments, false)
    change_column_null(:health_records, :health_notes, false)

  end
end
