N, M = gets.split(' ').map(&:to_i)

fib = 1.upto(N).reduce([1, 1]){ |last, cur| last << last[-1] + last[-2]}

a = []
M.times do |i|
  a << gets.to_i
end

a.reduce(-1) do |last, cur|
  last == cur - 1
end

last = 0
arr = []
a.each_with_index do |cur, i|
  break arr = [] if last == cur - 1 && !last.zero?
  arr << ((cur - last - 1 == 0) ? 1 : cur - last - 1)
  arr << N - cur if M == i + 1
  last = cur
end

if arr.size.zero?
  puts 0
else
  ans = 1
  arr.each do |i|
    ans *= fib[i - 1]
  end
  puts ans % 1000000007
end