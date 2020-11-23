class AddUserIdToTasks < ActiveRecord::Migration[5.2]
  def change
    def up
      execute 'DELETE FROM tasks;'
      add_reference :tasks, :user_id, null: false, index: true
    end
    
    def down
      add_reference :tasks, :user_id, index: true
    end
  end
end
