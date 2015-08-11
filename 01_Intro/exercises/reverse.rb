require 'pry'

def go_back(word)
  new_word = ""
  phrase = word.downcase.chars

      until phrase.length == 0
        new_word << phrase.pop
        print new_word.class
    end
end

def palindrome?(word)
  if word.downcase == go_back(word).downcase
    puts "You got it!"
  else puts "Aww, maybe next time"
  end
end

###
word = gets.strip
puts go_back(word)
puts palindrome?(word)
