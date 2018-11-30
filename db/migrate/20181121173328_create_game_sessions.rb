class CreateGameSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :game_sessions do |t|
      t.string :title
      t.string :code

      t.timestamps
    end
  end
end
