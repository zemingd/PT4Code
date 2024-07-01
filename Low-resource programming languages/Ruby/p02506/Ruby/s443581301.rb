word, *words = $stdin.read.split.take_while {|e| e != "END_OF_TEXT"}.map(&:downcase)
puts words.count(word)