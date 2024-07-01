n = gets.to_i

ans = 0
(1..n).each do |i|
  next if i.even?
  c = 0
  (1..i).each do |j|
    c += 1 if i % j == 0 
  end
  ans += 1 if c == 8
end

puts ans
