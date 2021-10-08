class CreateBlogs < ActiveRecord::Migration[6.1]
  def change
    create_table :blogs do |t|
      t.date :days
      t.string :title
      t.text :memo

      t.timestamps
    end
  end
end
