require 'pry'
require 'pry-byebug'

def get_info_from_user
  puts "Whom do you love? \n"
  person = gets.strip
  response = capture_response(person)
end

def capture_response(person)
  puts "Are you thinking of #{person}? \n"
  puts "Answer 'Yes' or 'No'\n"
  answer = gets.strip.downcase #capture_love_interest_response(person) could go here

  case answer
    when'yes'
      puts "Maybe you should call #{person}"
    when 'no'
      puts "Ok, maybe call them soon. You love #{person}!"
    else
      puts "This answer is not valid \n"
      puts "Please put 'Yes' or 'No'\n "
      answer = capture_response(person)
  end
  return person, answer # we want both answer and the person
end



### This is where we run our script
get_info_from_user
