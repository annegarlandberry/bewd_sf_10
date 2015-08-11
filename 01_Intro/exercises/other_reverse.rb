def reversin(string)
  word = ""
  i=0
  while i< string.length
	word = string[i] + word
  i+=1
end
return word
end


def palindrome(word)
  if word == reversamente(word)
  	"Hooray!"
  else
  	"Aww man, #{word} is NOT an palindrome"
  end
end
