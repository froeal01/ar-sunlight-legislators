require_relative '../config'

class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.belongs_to :congress_member
      t.integer :twitter_id
      t.string :text
      t.string :congress_members_id
    end
    add_index :tweets, :congress_member_id
  end
end