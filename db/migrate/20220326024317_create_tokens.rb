class CreateTokens < ActiveRecord::Migration[7.0]
  def change
    create_table :tokens do |t|
      t.string :name
      t.string :ticker
      t.integer :price

      t.timestamps
    end
  end
end
