#!/usr/bin/env ruby

(n, k) = gets.chomp.split(/ /).map(&:to_i)

s = gets.chomp.split(//).map(&:to_i)

if s.join() =~ /^1+$/
  puts s.inject(:+)
  exit
end

flag = s[0]
array = []
count = 0

s.each do |i|
  if flag == i
    count += 1
  else
    array << count
    flag = i
    count = 1
  end
end
array << count

if s[0] == 0
  array.unshift(0)
end
if s[-1] == 0
  array.push(0)
end
#p array
max = 0
val = 0

(0..(k * 2)).each do |i|
  val += array[i]
end

max = val
#puts "first:#{max}"


#(0..(array.size - (k * 2))).each do |j|
0.step((array.size - (k * 2) - 2), 2) do |j|
  val -= (array[j] + array[j + 1])
  val += (array[j + k * 2 + 1] + array[j + k * 2 + 2])
#  puts "val:#{val}, j:#{j}"
  max = val if max < val
end

puts max
