N, M = gets.split(' ').map(&:to_i)

fib = 1.upto(N+1).reduce([1, 1]){ |last, cur| last << last[-1] + last[-2]}

a = []
M.times do |i|
  a << gets.to_i
end

a.reduce(-1) do |last, cur|
  if last == cur - 1
    puts 0
    exit
  end
  cur
end

last = -1
arr = []
a.each_with_index do |cur, i|
  arr << cur - last - 1 == 0
  arr << N - cur if M == i + 1 
  last = cur
end

ans = 1
arr.each do |i|
  ans *= fib[i - 1]
end
p ans % 1000000007