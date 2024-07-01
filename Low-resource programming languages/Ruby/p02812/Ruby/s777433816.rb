n = gets.to_i
s = gets.chomp

ans = 0
(s.length-2).times do |i|
  if s[i..(i+2)] == "ABC"
    ans += 1
  end
end

puts ans