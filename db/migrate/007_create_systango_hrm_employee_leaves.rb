class CreateSystangoHrmEmployeeLeaves < ActiveRecord::Migration[4.2]
  def change
    create_table :systango_hrm_employee_leaves do |t|
      t.integer :user_id
      t.integer :referral_id
      t.boolean :is_half_day, :default => false
      t.boolean :is_maternity_leave, :default => false
      t.datetime :leave_start_date
      t.datetime :leave_end_date
      t.integer :subject_id
      t.string :remark
      t.string :status, :default => "pending"
      t.timestamps
    end
    add_index :systango_hrm_employee_leaves, :user_id, :systango_hrm_employee_leaves_user_id_index
    add_index :systango_hrm_employee_leaves, :referral_id, :systango_hrm_employee_leaves_referral_id_index
  end
end
