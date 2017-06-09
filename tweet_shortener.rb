def dictionary
  dictionary = {
    "hello" => "hi",
    "two" => "2",
    "too" => "2",
    "to" => "2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  tweet_array = string.split(" ")
  tweet_array.map do |word|
    if (dictionary.keys).include?(word)
      dictionary[word]
    elsif (dictionary.keys).include?(word.downcase)
      dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each {|string| puts word_substituter(string)}
end

def selective_tweet_shortener(tweet)
    if tweet.length > 140
      word_substituter(tweet)
    else
      tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    word_substituter(tweet)[0...137] + "..."
  else
    tweet
  end
end
