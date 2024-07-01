N = gets.to_i

ans = 0

(1..N).each do |n|
  next if n.even?
  count = 1
  3.upto(n) do |i|
    count += 1 if n%i == 0
  end
  ans += 1 if count == 8
end

puts ans