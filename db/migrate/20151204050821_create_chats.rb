class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.string :user
      t.text :body
      t.references :event, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
