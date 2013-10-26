require_relative 'app/models/congress_member.rb'








if ARGV.any?

  id = ARGV[0]

  person = CongressMember.where(:id => id)
  tweet = person.first.get_last_ten_tweets
  tweet.each do |twit|
    p twit.text
    p twit.created_at
  end
end
