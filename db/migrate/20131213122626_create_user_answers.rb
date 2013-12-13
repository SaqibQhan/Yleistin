class CreateUserAnswers < ActiveRecord::Migration
  def change
    create_table :user_answers do |t|
      t.references :question
      t.references :user
      t.boolean :yes
      t.boolean :no
      t.timestamps
    end
  end
end
