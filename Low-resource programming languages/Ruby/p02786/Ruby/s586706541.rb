h = gets.chomp.to_i

$count = 0
def dev(n)
  $count += 1
  return if n == 1
  dev(n/2)
end

dev(h)
ans = 0
$count.times do |i|
  ans += (2 ** i)
end
p ans
