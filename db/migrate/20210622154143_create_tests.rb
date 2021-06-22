class CreateTests < ActiveRecord::Migration[6.1]
  def change
    create_table :tests do |t|
      t.string :value1, null: false
      t.string :value2, null: false
      t.timestamps
    end
  end
end
