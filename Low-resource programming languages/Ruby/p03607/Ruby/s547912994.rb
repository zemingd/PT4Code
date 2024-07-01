n = gets.chomp.to_i
memo = {}
n.times do
  num = gets.chomp
  memo[num] ? memo[num] = nil : memo[num] = true
end
result = 0
memo.each do |k,v|
  result += 1 if (v)
end
puts result