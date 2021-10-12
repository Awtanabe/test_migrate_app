class Addaaa < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :user, index: true
  end
end
