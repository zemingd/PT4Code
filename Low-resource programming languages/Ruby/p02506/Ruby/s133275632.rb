words =  STDIN.take_while{ |l| l != 'END_OF_TEXT\n'}.inject(:+).split(/[ \n]/)
puts words[1 .. -1].count(words[0])