class CreatePatientRecords < ActiveRecord::Migration[7.1]
  def change
    create_table :patient_records do |t|
      t.string :receptionist

      t.timestamps
    end
  end
end
