require 'prime'

n = gets.to_i
a = gets.chomp.split.map(&:to_i)

hs = Hash.new(0)
n.times do |i|
  Prime.prime_division(a[i]).each do |p, _|
    hs[p] += 1
  end
end

res = hs.values.max
if res == 1
  puts "pairwise coprime"
elsif res == n
  puts "not coprime"
else
  puts "setwise coprime"
end
