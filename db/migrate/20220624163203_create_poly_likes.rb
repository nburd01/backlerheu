class CreatePolyLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :poly_likes do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.references :likeable, polymorphic: true, null: false

      t.timestamps
    end
  end
end
