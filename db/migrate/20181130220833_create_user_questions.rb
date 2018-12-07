class CreateUserQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :user_questions do |t|
      t.string :content
      t.integer :user_id
      t.integer :question_id
      t.integer :game_session_id
      t.integer :round_id

      t.timestamps
    end
  end
end
