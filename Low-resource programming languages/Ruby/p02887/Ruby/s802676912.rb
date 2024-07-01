n = gets.chomp.to_i
s_list = gets.chomp.chars

ans = 1

n.times do |i|
  if i == n - 1
    break
  end
  if s_list[i] == s_list[i+1]
    next
  else
    ans += 1
  end
end

puts ans
