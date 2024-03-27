class AddTaskDueDateToTasks < ActiveRecord::Migration[7.1]
  def change
    add_column :tasks, :taskDueDate, :date
  end
end
