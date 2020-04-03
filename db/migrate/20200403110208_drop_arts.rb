class DropArts < ActiveRecord::Migration[5.1]
  def change
    drop_table :arts
    drop_table :classics
    drop_table :codings
    drop_table :examples
    drop_table :playfuls
  end
end
