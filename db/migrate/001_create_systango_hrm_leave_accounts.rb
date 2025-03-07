class CreateSystangoHrmLeaveAccounts < ActiveRecord::Migration[4.2]
  def change
    create_table :systango_hrm_leave_accounts do |t|
      t.integer :user_id
      t.integer :current_designation_id
      t.date :date_of_joining
      t.boolean :is_eligible_for_maternity_leave, :default => false
      t.timestamps
    end
    add_index :systango_hrm_leave_accounts, :user_id, :name => 'systango_hrm_leave_accounts_user_id_index'
    add_index :systango_hrm_leave_accounts, :current_designation_id, :name => 'systango_hrm_leave_accounts_designation_id_index'
  end
end
