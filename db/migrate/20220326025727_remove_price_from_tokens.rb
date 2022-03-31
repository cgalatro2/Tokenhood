class RemovePriceFromTokens < ActiveRecord::Migration[7.0]
  def change
    remove_column :tokens, :price, :integer
  end
end
