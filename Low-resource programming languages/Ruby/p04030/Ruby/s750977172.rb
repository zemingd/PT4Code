a=[]
gets.chomp.chars.map{|c| c=='B' ? a.pop : a<<c}
puts a.join
