

def my_reverse(string)
 char = string.downcase.chars
 word = ""
 until char.length == 0
   word << char.pop
  end
   word.capitalize
end

def is_palindrome?(word)
 if word.downcase == my_reverse(word).downcase
   puts "A palindrome!"
 else
   puts "That is not a palindrome!!"
    end
end
#####
puts "Please provide a word \n"
word = gets.chomp
puts my_reverse (word)
puts is_palindrome? (word)
