n = gets.to_i
a = gets.split.map(&:to_i)
class Array
  def gcd
    inject(:gcd)
  end
end
sc = a.gcd

pc = true
x = []
require 'prime'
a.each do |i|
  y = i.prime_division
  x.concat(y.map{|j| j[0]})
end
pc = false if x.size != x.uniq.size

if pc == true
  puts "pairwise coprime"
elsif sc == 1
  puts "setwise coprime"
else
  puts "not coprime"
end