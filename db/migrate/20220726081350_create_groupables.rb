class CreateGroupables < ActiveRecord::Migration[7.0]
  def change
    create_table :groupables do |t|
      t.belongs_to :group, null: false, foreign_key: true
      t.belongs_to :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
