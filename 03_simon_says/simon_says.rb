def shout (word)
  word.upcase
end

def echo (word)
  word
end

def repeat (word, number = 2)
  output = word
  (number - 1).times do
    output = output + " " + word
  end
  output
end

def start_of_word (word, number = 1)
  word[0, number]
end

def first_word (word)
  word.split[0]
end

def titleize (title)
  words = title.split.map do |word|
    if %w(the and over).include?(word)
      word
    else
      word.capitalize
    end
  end
  words.first.capitalize!
  words.join(" ")
end
