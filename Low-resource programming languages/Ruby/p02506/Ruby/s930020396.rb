word, *words, _END_OF_TEXT = $stdin.read.split(/[ \s]+/).map(&:downcase)
puts words.select {|x| x == word}.count