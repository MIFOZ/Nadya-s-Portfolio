class AddLabelToPiece < ActiveRecord::Migration
  def change
    add_column :pieces, :title, :string
  end
end
