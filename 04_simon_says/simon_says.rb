def echo(word)
  word = word
end

def shout(word)
  word.upcase
end

def repeat (word, n = 2)
  ([word] * n).join ' '
end

def start_of_word(word, place)
  word[0..place-1]
end

def first_word(string)
 string.split.first
end

def titleize(string)
  string.split.map.with_index{|x, i| x.length <= 3 && i > 0 ? x : x.capitalize }.join(" ")
end
