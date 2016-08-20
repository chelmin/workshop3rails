class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :number, null: false
      t.boolean :completed, null: false, default: false

      t.timestamps null: false
    end
  end
end