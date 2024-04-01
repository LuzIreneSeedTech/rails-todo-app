class CreateCategoriesTasks < ActiveRecord::Migration[7.1]
  def change
    create_table :categories_tasks do |t|
      t.belongs_to :category
      t.belongs_to :task

      t.timestamps
    end
  end
end
