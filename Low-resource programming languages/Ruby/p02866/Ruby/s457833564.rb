require 'openssl'
require 'set'; require 'prime'
INF=Float::INFINITY; MOD=998244353
n = gets.chomp.to_i
d = gets.chomp.split.map(&:to_i)

h = Hash.new(0)
d.each do |num|
  h[num] += 1
end

if h[0] == 0
  puts 0
  exit
end

ans = 1
combi = Combi.new(n, MOD)

ha = h.sort_by{|k,v| k}
(ha.size-1).times do |i|
  if ha[i][0] + 1 != ha[i+1][0]
    puts 0
    exit
  end
  # p [ha[i][1], ha[i+1][1], ha[i][1].to_bn.mod_exp(ha[i+1][1], MOD)]
  ans = ans * ha[i][1].to_bn.mod_exp(ha[i+1][1], MOD) % MOD
end

puts ans
