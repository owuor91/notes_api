class AddUserToNote < ActiveRecord::Migration[6.0]
  def change
    add_reference :notes, :user, null: false, foreign_key: true, default:1
  end
end
