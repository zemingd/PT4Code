#!/usr/bin/ruby

N = gets.chomp.to_i
L = gets.chomp.split(" ").map(&:to_i)

s = 1
b = 0
L.each_with_index{|n,index|
  if n == s
    s+=1
    next
  end

  b+=1
}

if s == 1
  puts -1
else
 puts b
end
