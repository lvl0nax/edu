class ChangeColumnForSubjects < ActiveRecord::Migration
  def change
    rename_column :subjects, :name, :name_ru
    add_column :subjects, :name_en, :string
  end
end

