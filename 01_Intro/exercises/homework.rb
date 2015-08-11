def back_it_up(string) #defining a method before the variable is introduced. If I put this definition later, after the mention of "string", it would not recognize "string" (I tried that and got a syntax error)

  letter = back_it_up.upcase.chars #we have the string and method defined, but the palindrome assessment will need to make the string uniform in order to look at symmetry (if there were a lowercase letter, the terms would not match). Then, it needs to separate it letter by letter to analyze the order
  word = "" #need to introduce word because the method will first look at characters and compare them to another word, but there needs to be a place for these characters to be assembled
  word << letter.pop #now that we have an empty set for "word", the word will be defined by the letters, broken into individual CHARACTERS by chars, and the last of each set re-ordered (pop) and then put into the "word" (<< shovel)
end #this concludes the definition of this action
