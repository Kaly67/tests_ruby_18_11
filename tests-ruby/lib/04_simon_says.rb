def echo(word)
  word
end

def shout(words)
  words.upcase
end

def repeat(word, times = 2)
  ([word] * times).join(" ")
end

def start_of_word(word, n)
  word[0, n]
end

def first_word(sentence)
  sentence.split.first
end

def titleize(title)
  little_words = ["and", "the", "over"]
  words = title.split.map.with_index do |word, index|
    if little_words.include?(word) && index > 0
      word
    else
      word.capitalize
    end
  end
  words.join(" ")
end