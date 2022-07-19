class AddImgToDiscipline < ActiveRecord::Migration[7.0]
  def change
    add_column :disciplines, :discipline_img, :string
  end
end
