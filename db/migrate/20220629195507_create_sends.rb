class CreateSends < ActiveRecord::Migration[7.0]
  def change
    create_table :sends do |t|

      t.timestamps
    end
  end
end
