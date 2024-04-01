class RemoveForeignKeyFromProjects < ActiveRecord::Migration[7.1]
  def change
    remove_column :projects, :task_id
  end
end
