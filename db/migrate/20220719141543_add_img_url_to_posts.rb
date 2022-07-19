class AddImgUrlToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :post_url, :string
  end
end
