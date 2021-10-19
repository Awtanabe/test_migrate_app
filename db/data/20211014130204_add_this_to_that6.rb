# frozen_string_literal: true

class AddThisToThat6 < ActiveRecord::Migration[5.2]
  def up
    puts "datamaigrate5"
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
