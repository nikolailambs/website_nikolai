class CreateCodings < ActiveRecord::Migration[5.1]
  def change
    create_table :codings do |t|
      t.string :name

      t.timestamps
    end
  end
end
