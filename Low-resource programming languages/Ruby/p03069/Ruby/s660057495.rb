n = gets.to_i
s = gets.chomp
ans = 0
(0...n).each do |i|
  if s[i] == "#" && s[i+=1] == "."
    ans += 1
  end
end
puts ans