def cin; gets.split.map(&:to_i) end

# exit if $0 != __FILE__

# n, *x = cin
# s = gets.chomp

# puts n
MOD = 1000000007
n,m = cin
as = Array.new(n+1, -1)
as[0] = 1
m.times do
  as[gets.to_i] = 0
end

(n+1).times do |x|
  next if as[x] >= 0

  a = x >= 1 ? as[x-1] : 0
  b = x >= 2 ? as[x-2] : 0
  as[x] = (a + b) % MOD
end

p as[n]