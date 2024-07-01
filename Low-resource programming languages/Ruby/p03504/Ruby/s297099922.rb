require 'set'; require 'prime'
INF=Float::INFINITY; MOD=10**9+7
n, C = gets.chomp.split.map(&:to_i)

a = Array.new(C+1){Hash.new(0)}
n.times do |i|
  s,t,c = gets.chomp.split.map(&:to_i)
  a[c][s] += 1
  a[c][t] -= 1
end

imos = Hash.new(0)
a.each do |ac|
  # p ac
  ac.each do |k, v|
    if v > 0
      imos[k-1] += v
    elsif v < 0
      imos[k] += v
    end
  end
end
ans = 0
current = 0
imos.sort_by{|k,v| k}.each do |k,v|
  current += v
  ans = current if ans < current
end
puts ans
