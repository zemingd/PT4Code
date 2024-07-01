word, *words, _END_OF_TEXT = $stdin.read.split(/[ \n\.]+/)
puts words.map(&:downcase).select {|x| x == word.downcase}.count