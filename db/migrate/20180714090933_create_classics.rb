class CreateClassics < ActiveRecord::Migration[5.1]
  def change
    create_table :classics do |t|
      t.string :name

      t.timestamps
    end
  end
end
