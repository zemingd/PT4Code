n = gets.to_i
s = gets.chomp.chars
ans = ""
s.each do |c|
  num = c.ord - 65
  num = (num + n) % 26
  ans += (num + 65).chr 
end
puts ans