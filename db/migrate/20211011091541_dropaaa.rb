class Dropaaa < ActiveRecord::Migration[5.2]
  def up
    drop_table(:tasks, if_exists: true)
  end

  def down
    # 利用していないテーブルのためもとに戻さない
    raise ActiveRecord::IrreversibleMigration
  end
end
