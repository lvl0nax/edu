class ChangeColumnForProvider < ActiveRecord::Migration
  def up
    change_column :providers, :description_en, :text
  end

  def down
    change_column :providers, :description_en, :string
  end
end
