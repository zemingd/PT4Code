word, *paragraph = $stdin.read.split(/\s/)
puts paragraph.select {|x| x == word}.count