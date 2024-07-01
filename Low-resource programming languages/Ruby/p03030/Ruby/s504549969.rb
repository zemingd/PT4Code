#!/usr/bin/env ruby

N = gets.chomp.to_i

arr = []
i = 1
while line = gets do
  tmp = [i] + line.chomp.split
  tmp[2] = tmp[2].to_i
  arr << tmp
  i = i + 1
end

# p i
# p arr


arr2 = arr.sort { |a, b|
  res = a[1] <=> b[1]

  res == 0 ? -1 * (a[2] <=> b[2]) : res
}

arr2.each do |a|
  puts a[0]
end
