require 'pp'
require 'prime'
require 'set'

N=gets.chomp.split(' ').map{|n| n.to_i}.first
#
# if Prime.prime?(N)
#   puts N-1
#   exit
# end
#
# a=0
# b=0
#
# mini = 1_000_000_000_000_0
# source = Math.sqrt(N).to_i+1
# 1.upto(source) do |n|
#   next if N%n!=0
#   a=n
#   b=N/n
#   if ((a-1 + b-1) < mini)
#     mini = a-1 + b-1
#   end
# end
#
# puts mini
#
#
#

# a,b,x=gets.chomp.split(' ').map{|n| n.to_f}

def divisors(n)
  n.prime_division.inject([1]) do |ary, (p, e)|
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end.sort
end

def arc057func(a,b)
  [a.to_s.size, b.to_s.size].max
end

ans = 10**10
divisors(N).each do |n|
  candidate = arc057func(n, N/n)
  if candidate < ans
    ans = candidate
  end
end

puts ans