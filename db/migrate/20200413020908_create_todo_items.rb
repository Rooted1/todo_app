class CreateTodoItems < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_items do |t|
      t.string :title
      t.text :description
      t.integer :category_id
      t.integer :day_id

      t.timestamps
    end
  end
end
