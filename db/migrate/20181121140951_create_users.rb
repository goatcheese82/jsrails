class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.belongs_to :game_session
      t.string :first_name

      t.timestamps
    end
  end
end
