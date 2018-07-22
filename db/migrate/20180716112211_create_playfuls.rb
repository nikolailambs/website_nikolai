class CreatePlayfuls < ActiveRecord::Migration[5.1]
  def change
    create_table :playfuls do |t|
      t.string :name

      t.timestamps
    end
  end
end
