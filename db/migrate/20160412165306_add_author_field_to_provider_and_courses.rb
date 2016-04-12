class AddAuthorFieldToProviderAndCourses < ActiveRecord::Migration
  def change
    add_column :providers, :user_id, :integer
    add_column :courses, :user_id, :integer
  end
end
