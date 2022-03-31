class AddPriceToTokens < ActiveRecord::Migration[7.0]
  def change
    add_column :tokens, :price, :float
  end
end
