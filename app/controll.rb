require_relative 'app/models/congress_members.rb'

person = CongressMember.where(:id => 1)
tweets = person.first.get_last_ten_tweets
p tweets[0]
p tweets[1]