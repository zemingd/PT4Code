word, *paragraph = $stdin.read.split(/[ \t\n]/)
puts paragraph.map(&:strip).select {|x| x == word}.count