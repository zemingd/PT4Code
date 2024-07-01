a=""
gets.chomp.chars{|c|c=='B' ? a.chop! : a+=c}
puts a