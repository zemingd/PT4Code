require 'prime'
n = gets.chomp
a = gets.chomp.split(" ").map(&:to_i)

h = Hash.new(0)

a.each do |i|
  Prime.prime_division(i).each do |n, e|
    h[n] = e if h[n] < e
  end
end

m = 1
h.each do |n, e|
  m *= (n**e)
end

m -= 1

puts a.map{|i| m % i}.inject(:+)