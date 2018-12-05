class CreateRounds < ActiveRecord::Migration[5.2]
  def change
    create_table :rounds do |t|
      t.belongs_to :game_session
      t.integer :question_id

      t.timestamps
    end
  end
end
