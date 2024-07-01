N = gets.chomp.to_i
D = gets.chomp.split(" ").map(&:to_i)

if D[0] != 0 || D[1..-1].include?(0) then
  puts "0"
  return
end

ranks = []
(1..Float::INFINITY).lazy.each do |i|
  r = D.count {|n| n == i}
  break if r == 0
  ranks << r
end

$memo = []
def factorial(n)
  $memo[n] if $memo[n] != nil

  $memo[n] = (1..n).inject(1,:*)
  return $memo[n]
end

def C(n, r)
  return factorial(n) / (factorial(r) * factorial(n - r))
end

s = 1
pr = 1
ranks.each do |r|
  s *= pr ** r
  pr = r
end

puts s % 998244353