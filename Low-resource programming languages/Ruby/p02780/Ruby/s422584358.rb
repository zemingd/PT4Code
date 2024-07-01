#!/usr/bin/ruby

require 'pp'

N, K  = gets.chomp.split(" ").map(&:to_i)
P  = gets.chomp.split(" ").map(&:to_i)

max = 0.0

0.upto(K-1){|i|
  P[i] = (P[i].to_f + 1.to_f)/2.0
  max += P[i]
}

i = K
j = 0

while i < P.size do
  P[i] = (P[i].to_f + 1.to_f)/2.0
  cur = max + P[i] - P[j]
  if cur > max
    max = cur
  end
  i+=1
  j+=1
end

puts max
