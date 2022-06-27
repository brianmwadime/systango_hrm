class CreateSystangoHrmDesignations < ActiveRecord::Migration[4.2]
  def change
    create_table :systango_hrm_designations do |t|
      t.string :designation
			t.decimal :leaves_entitled, :precision => 10, :scale => 2
      t.timestamps
    end
  end
end
