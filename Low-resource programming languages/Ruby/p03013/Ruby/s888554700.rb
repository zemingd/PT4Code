N, M = gets.split.map(&:to_i)
As = readlines.map(&:to_i)
MOD = 1_000_000_007

def fib(n)
  return 1 if n < 2
  a, b = 1, 1
  n.times{a, b = b, a + b}
  a
end

puts ([0] + As.flat_map{|a| [a - 1, a + 1]} + [N]).each_slice(2).map{|a, b| a > b ? 0 : fib(b - a)}.inject(1){|r, x| r * x % MOD}