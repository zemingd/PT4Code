s = gets.chomp
answer = 753
for i in 0..s.length-3
  s_i = (s[i] + s[i+1] + s[i+2]).to_i
  a = (753-s_i).abs 
  answer = a if answer > a 
end
puts answer