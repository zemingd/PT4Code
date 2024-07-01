_n = gets.to_i
s = gets

ans = 0

prev = s[0]
(1..(s.size - 1)).each do |i|
  current = s[i]
  if current != prev
    ans += 1
  end
  prev = current
end

puts ans
