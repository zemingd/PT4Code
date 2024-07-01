N = gets.to_i
ans = 0
1.upto(N) do |i|
  count = 0
  1.upto(i) do |j|
    count += 1 if i%i == 0
  end
  ans += 1 if count == 8
end

print ans