N = gets.chomp.to_i
ans = 0
odd = Array.new
(1..N).each do |i|
  odd << i if i.odd?
end
odd.each do |i|
  count = 0
  (1..i).each do |j|
    count += 1 if i % j == 0
  end
  ans += 1 if count == 8
end
puts ans
