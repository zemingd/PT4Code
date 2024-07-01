n = gets.to_i
d=gets.chomp.split(" ").map(&:to_i)

ans = 0
for i in 0 .. n-2
  for j in i+1 .. n-1
    ans += d[i] * d[j]
  end
end

puts ans
