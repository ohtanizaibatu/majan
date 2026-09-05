class CreateTweets < ActiveRecord::Migration[7.2]
  def change
    create_table :tweets do |t|
      t.string :name
      t.integer :image
      t.text :about
      t.integer :age

      t.timestamps
    end
  end
end
