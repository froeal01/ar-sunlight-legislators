require_relative '../../db/config'
require_relative 'tweet.rb'
require 'twitter'


class CongressMember < ActiveRecord::Base
  has_many :tweets



  def get_last_ten_tweets
    Twitter.configure do |config|
      config.consumer_key = 'AbyCM3YAybNq91TTJrF8Rw'
      config.consumer_secret = 'brNugX42LzX9bSGiymTNWjrSXvJzkLWATRSqibHomY'
    end

    last_ten_tweets = Twitter.user_timeline(twitter_id, :count => 10)

    last_ten_tweets.each do |tweet_data|
      tweet =Tweet.new( { :twitter_id => tweet_data.id, :text => tweet_data.text, :congress_members_id => twitter_id })
    end
 end



end



