a=""
gets.chomp.chars{|c|/\d/=~c ? a+=c :a.chop!}
puts a