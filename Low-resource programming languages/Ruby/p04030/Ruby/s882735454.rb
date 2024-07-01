a=""
gets.chomp.chars.map{|c| c=='B' ? a.slice!(-1) : a<<c}
puts a