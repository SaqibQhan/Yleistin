class CreateUserPerformances < ActiveRecord::Migration
  def change
    create_table :user_performances do |t|
      t.references :user
      t.references :topic
      t.float :performance
      t.timestamps
    end
  end
end
