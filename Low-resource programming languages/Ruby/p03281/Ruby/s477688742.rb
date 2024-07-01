N = gets.to_i
ans = 0
(1..N).each do |n|
  next if n.even?
  count = 0
  (1..n).each do |m|
    count += 1 if n % m == 0
  end
  ans += 1 if count == 8
end
puts ans
