class AddRootingToDiscipline < ActiveRecord::Migration[7.0]
  def change
    add_column :disciplines, :discipline_root, :string
  end
end
