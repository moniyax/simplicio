class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :user
      t.integer :voteable_id
      t.string :voteable_type

      t.timestamps
    end
    add_index :votes, :user_id
  end
end
