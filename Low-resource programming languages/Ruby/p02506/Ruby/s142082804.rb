word, *paragraph, _END_OF_TEXT = $stdin.read.split(/[ \t\n]/)
puts paragraph.map(&:strip).select {|x| x == word}.count