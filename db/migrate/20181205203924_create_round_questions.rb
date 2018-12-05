class CreateRoundQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :round_questions do |t|

      t.timestamps
    end
  end
end
