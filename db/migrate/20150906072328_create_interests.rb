class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
          t.integer :user_id
          t.integer :age
          t.string :gender
          t.string :major
          t.string :language
          t.integer :grade
          t.text :character
          t.string :face
          t.string :alcohol
          t.string :home
          t.string :religion
          t.string :photo
          t.string :what_friend
          t.string :empty_time
          t.string :hobby
          t.string :movie
          t.string :book
          t.string :song
          t.string :myself
          t.string :not_want

          
      t.timestamps null: false
    end
  end
end
