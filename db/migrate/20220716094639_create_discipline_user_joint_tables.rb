class CreateDisciplineUserJointTables < ActiveRecord::Migration[7.0]
  def change
    create_table :discipline_user_joint_tables do |t|
      t.references :user, null: false, foreign_key: true
      t.references :discipline, null: false, foreign_key: true

      t.timestamps
    end
  end
end
