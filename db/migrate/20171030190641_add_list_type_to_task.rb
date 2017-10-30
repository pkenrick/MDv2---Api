class AddListTypeToTask < ActiveRecord::Migration
  def change
    add_column :tasks, :list_type, :string, default: 'private'
  end
end
