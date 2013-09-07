#For those just starting out, one suggested way to work on your code is to have a command window open and a text editor with this
#file loaded.  Make changes to this file and then run 'ruby part1.rb' at the command line, this will run your program.  Once you're
#satisfied with your work, save your file and upload it to the checker.


def palindrome?(str)
  only_letters = str.downcase.delete "^a-z"
  only_letters == only_letters.reverse
end

def count_words(str)
  count = Hash.new(0)

  str.downcase.
  split(/\b/).
  select { |word| word =~ /[a-z]+/ }.
  each do |word|
  	count[word] += 1
  end

  count
end
