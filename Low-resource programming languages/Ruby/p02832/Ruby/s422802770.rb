n = gets.to_i
nums = gets.split.map(&:to_i)
tmp = 1
ans = 0
nums.each do |num|
  if num == tmp
    tmp += 1
  else
    ans += 1
  end
end
puts ans == n ? -1 : ans
