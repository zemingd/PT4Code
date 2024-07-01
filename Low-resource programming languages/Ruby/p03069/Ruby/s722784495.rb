n = gets.to_i
s = gets.chomp.chars


cost_tmp = s.count(".")

ans = cost_tmp

for num in 1..(s.size) do
  # numからすべて#、num-1からすべて.
  if s[num - 1] == "#"
    cost_tmp += 1
  else
    cost_tmp -= 1
  end
  if cost_tmp < ans
    ans = cost_tmp
  end
end
puts ans.to_s