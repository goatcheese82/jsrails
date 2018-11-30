class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.belongs_to :game_session
      t.string :code
      t.string :full_name
      t.string :first_name
      t.string :last_name
      t.string :email

      t.timestamps
    end
  end
end
