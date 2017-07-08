def translate_individual (word)
  while !(word.start_with?('a', 'e', 'i', 'o', 'u'))
  if word[0..1] == "qu"
    word = word[2..-1] + word[0..1]
    else
      first_letter = word[0]
      word = word[1..-1]
      word << first_letter
    end
  end
  word << "ay"
end

def translate (sentance)
  sentance.split(' ').map{|x| translate_individual(x)}.join(' ')
end


