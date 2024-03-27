class AddIsCompletedToTasks < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :isCompleted, :boolean
  end
end
