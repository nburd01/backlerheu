class AddPictureToDiscipline < ActiveRecord::Migration[7.0]
  def change
    add_column :disciplines, :img_url, :string
  end
end
