s=gets.chomp
flag = false
s.each_char {|c| flag = true if c=='7'}
puts flag ? "Yes":"No"