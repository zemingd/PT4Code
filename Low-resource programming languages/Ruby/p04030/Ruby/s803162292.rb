a=""
gets.chomp.each_char{|c| c=='B' ? a.chop! : a<<c}
puts a