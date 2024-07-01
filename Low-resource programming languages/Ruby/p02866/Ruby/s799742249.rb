mod = 998244353

def rec(n, p, m)
  if p == 0
    return 1
  elsif p % 2 == 0
    tmp = rec(n, p / 2, m)
    return tmp * tmp % m
  end
  n * rec(n, p - 1, m) % m
end

n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
counts = Array.new(n, 0)
(0...n).each do |i|
  counts[arr[i]] += 1
end
while counts.last == 0
  counts.pop
end
prev = counts.shift
if prev != 1 || counts.empty?
  puts 0
  exit(0)
end
result = 1
counts.each do |i|
  result = (result * rec(prev, i, mod)) % mod
  prev = i
end
puts result