class CreatePolyComments < ActiveRecord::Migration[7.0]
  def change
    create_table :poly_comments do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.references :commentable, polymorphic: true, null: false
      t.string :content
      t.timestamps
    end
  end
end
