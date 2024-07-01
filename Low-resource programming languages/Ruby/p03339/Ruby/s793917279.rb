n = gets.to_i
s = gets.chomp
min = n
(0...n).each do |i|
  m = s[0,i].scan(/W/).size + s[i+1,n-(i+1)].scan(/E/).size
  min = m if min > m
end
puts min