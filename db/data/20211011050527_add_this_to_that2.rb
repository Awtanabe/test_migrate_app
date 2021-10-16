# frozen_string_literal: true

class AddThisToThat2 < ActiveRecord::Migration[5.2]
  def up
    puts "datamaigrate2"
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
