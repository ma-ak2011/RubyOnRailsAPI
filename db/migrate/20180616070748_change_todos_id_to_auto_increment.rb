class ChangeTodosIdToAutoIncrement < ActiveRecord::Migration[5.2]
  def change
    reversible do |dir|
      dir.up do
        change_column :todos, :id, :bigint, auto_increment: true
      end

      dir.down do
        change_column :todos, :id, :int, auto_increment: true
      end
    end
  end
end
