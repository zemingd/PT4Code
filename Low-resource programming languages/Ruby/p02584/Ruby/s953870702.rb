require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
x,k,d = gets.chomp.split.map(&:to_i)

if x < 0
  x = x.abs
end

if x - k * d > 0
  puts x - k * d
else
  r = x % d
  l = r - d
  nokori_k = k - x / d
  # p [l, r, nokori_k]
  if nokori_k.even?
    puts r.abs
  else
    puts l.abs
  end
end