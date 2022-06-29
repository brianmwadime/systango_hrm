class CreateSystangoHrmTeamleadsSubordinates < ActiveRecord::Migration[4.2]
  def change
    create_table :systango_hrm_teamleads_subordinates do |t|
      t.integer :teamlead_user_id
      t.integer :subordinate_user_id
      t.timestamps
    end
    add_index "systango_hrm_teamleads_subordinates", ["teamlead_user_id"], "systango_hrm_teamleads_subordinates_teamlead_user_id_index"
    add_index "systango_hrm_teamleads_subordinates", ["subordinate_user_id"], "systango_hrm_teamleads_subordinates_subord_user_id_index"
  end
end
