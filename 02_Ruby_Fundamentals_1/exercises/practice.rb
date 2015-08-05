
ans = " "
bye_counter = 0
puts "HELLO, HOW ARE YOU?"
while true
  ans = gets.chomp
  if ans == "BYE"
   bye_counter = bye_counter + 1
   puts "I CAN'T HEAR YOU!" unless bye_counter == 3
 else bye_counter = 0
  end
   if bye_counter >= 3
     puts "SEE YOU SOON, LOVE!"
      break
    end
response =
if ans == ans.upcase && ans != "BYE"
   "WHAT? NOT SINCE #{((rand(21)) + 1930)}!"
 else "HUH? SPEAK UP, SONNY!" unless ans == "BYE"
  end
    puts response
end
