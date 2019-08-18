class AddUserToNote < ActiveRecord::Migration[6.0]
  def change
    add_reference :notes, :user, null: false, foreign_key: true, default:0
  end
end
