find = Regexp.new(gets.chomp)
puts $stdin.read.gsub(/.+\Z/ , "").scan(find).size