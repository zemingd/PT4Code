n = gets.to_i

sum = 0;
1.upto(n - 1) { |i| sum += i }

res = sum
n.downto(1) do |i|
  r = n % i
  next if r == 0 || r < i
  if res < sum - i + r
    res = sum - i + r 
    break
  end
end

puts res