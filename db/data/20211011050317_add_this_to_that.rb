# frozen_string_literal: true

class AddThisToThat < ActiveRecord::Migration[5.2]
  def up
    Task.all.each do |task|
      task.update(name: "HogeHoge")
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
