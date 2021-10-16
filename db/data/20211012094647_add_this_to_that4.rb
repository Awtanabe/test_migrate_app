# frozen_string_literal: true

class AddThisToThat4 < ActiveRecord::Migration[5.2]
  def up
    puts "datamaigrate3"
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
