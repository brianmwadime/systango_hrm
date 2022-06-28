class CreateSystangoHrmSubjects < ActiveRecord::Migration[4.2]
  def change
    create_table :systango_hrm_subjects do |t|
      t.string :subject
      t.timestamps
    end
  end
end
