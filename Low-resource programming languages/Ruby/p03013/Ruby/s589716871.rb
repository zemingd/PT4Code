N, M = gets.split(' ').map(&:to_i)
def fibonacci1(n)
  return 0 if n < 0
  return n if n < 3
  a, b = 1, 1
  n.times { a, b = b, a + b }
  a % 1000000007
end

if M == 0
  puts fibonacci1(N)
  exit
end

steps, start = 1, 0
M.times do |i|
  a = gets.to_i
  if a == start
    puts 0
    exit
  elsif a - 1 != start
    steps *= fibonacci1((a - 1) - start) % 1000000007
  end
  start = a + 1
  if i == M - 1 && start != N
    steps *= fibonacci1(N - start) % 1000000007
  end
end
puts steps % 1000000007
