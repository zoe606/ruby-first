class AddNametoCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :name, :text
  end
end
