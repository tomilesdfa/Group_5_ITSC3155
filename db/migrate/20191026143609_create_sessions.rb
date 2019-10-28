class CreateSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :sessions do |t|
      t.string :userName
      t.string :password

      t.timestamps
    end
  end
end
