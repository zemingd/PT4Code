#!/usr/bin/env ruby

n = STDIN.gets.chomp.to_i
nums = STDIN.gets.chomp.split(' ').map &:to_i

#min = nums.min
#nums.max.downto(1) do |i|
#  tmp = nums.select{|n| n % i != 0 }
#  if tmp.length <= 1
#    puts i
#    exit
#  end
#end

def gcd(a, b)
  if b > a
    tmp = b
    b = a
    a = tmp
  end

  if a % b == 0
    return b
  else
    gcd(b, a % b)
  end
end

max_gcd = 0

0.upto(n-1).each do |i|
  tmp_array = nums.slice(0...i) + nums.slice((i+1)..n)

  loop do
    first = tmp_array.shift
    second = tmp_array.shift

    if second == nil
      max_gcd = max_gcd > first ? max_gcd : first
      break
    end

    tmp_array.unshift gcd(first, second)
  end
end

puts max_gcd
