def acronymize(sentence)
  #4 get the first letter of each word - upcase
  #1 split sentences into words
  #3 go through each word in the array
  #5 for every letter got from word, store in an array
  #2 define the array
  #6 convert array into string
  words = sentence.split
  letters = []
  words.each do |word|
    letters << word[0].upcase
  end
  p letters.join
end



puts acronymize("Laughing out Loud") == "LOL"
puts acronymize("Oh MY GoSh") == "OMG"