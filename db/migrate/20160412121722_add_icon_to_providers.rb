class AddIconToProviders < ActiveRecord::Migration
  def change
    add_column :providers, :icon, :string
    add_column :providers, :average_price, :float
    add_column :providers, :currency, :integer
    add_column :providers, :free_content, :boolean
  end
end
