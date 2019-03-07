
def dictionary
  words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "2",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  words = dictionary
  array = tweet.split(" ")
  array.collect do |word|
    dictionary.collect do |key, value|
      if word == key
        word.replace(value)
      end
    end
  end
  array.join(" ")
end


def bulk_tweet_shortener(tweet_array)
  tweet_array.collect do |tweet|
    puts word_substituter(tweet)
  end
end
