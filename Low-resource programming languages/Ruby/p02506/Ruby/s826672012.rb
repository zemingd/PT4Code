words =  STDIN.take_while{ |l| l != 'END_OF_TEXT\n'}.inject(:+).downcase.split(/[ \n]/)
puts words[1 .. -1].count(words[0])