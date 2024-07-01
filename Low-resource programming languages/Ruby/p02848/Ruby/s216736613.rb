n = gets.to_i
s = gets.chomp

count = 0
ans = s.chars

while count < n
  0.upto(s.size - 1) do |i|
    ans[i] = ans[i].next![-1]
  end
  count += 1
end

print ans.join('')