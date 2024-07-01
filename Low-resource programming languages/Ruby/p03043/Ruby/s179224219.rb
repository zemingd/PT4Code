n,k = gets.split.map(&:to_i)

first = n
cnt = 1
while k > n
  n = n*2
  cnt = cnt.to_f/2
end

ans = 0
first.times do |i|
  ans += cnt/first
  puts ans
  cnt = cnt/2
end

puts ans
