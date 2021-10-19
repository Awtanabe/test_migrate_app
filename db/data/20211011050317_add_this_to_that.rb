# frozen_string_literal: true

class AddThisToThat < ActiveRecord::Migration[5.2]
  def up
    puts "datamaigrate1"
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
