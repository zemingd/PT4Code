require 'set'; require 'prime'; require 'pp'
INF=Float::INFINITY; MOD=10**9+7
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
a.sort!
ans = a.shift
lim = 10 ** 18
a.each do |e|
  ans *= e
  if ans > lim
    puts -1
    exit
  end
end
puts ans
