class AddCoordinatesToNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :notes, :coordinates, :string
  end
end
