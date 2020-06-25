class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :category
      t.string :link
      t.string :image

      t.timestamps
    end
  end
end
