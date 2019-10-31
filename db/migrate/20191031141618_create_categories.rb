class CreateCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :categories do |t|
      t.string :name #membuat kolom nama tipe string
    end
  end
end
