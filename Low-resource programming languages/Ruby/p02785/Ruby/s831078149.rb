#!/usr/bin/ruby

N, K  = gets.chomp.split(" ").map(&:to_i)
H  = gets.chomp.split(" ").map(&:to_i)

H.sort!.reverse!

1.upto(K){|n|
  H.shift
}

puts H.inject(0){|sum,n| sum+n}
