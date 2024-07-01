#!/usr/bin/env ruby

(n, k) = gets.chomp.split(/ /).map(&:to_i)
s = gets.chomp
sarray = s.split(//).map(&:to_i)

f = sarray[0]
array = []
count = 0
sarray.each do |i|
  if f == i
    count += 1
  else
    array << count
    f = i
    count = 1
  end
end
array << count

#p array
if sarray[0] == 0
  array.unshift(0)
end
if sarray[-1] == 0
  array.push(0)
end

if (array.size % 2 == 0)
  array.push(0)
end

#p array
v = 0
if (array.size - 1 >= k * 2)
  (0..(k * 2)).each do |j|
    v += array[j]
  end
else
  v = array.inject(&:+)
end
max = v
#puts "max:#{v}"
las = (array.size - (k * 2 + 1) - 2)
#puts "last#{las}"
if las < 0
else
  0.step(las, 2) do |l|
    del = array[l] + array[l + 1]
    add = array[l + k * 2 + 1] + (array[l + k * 2 + 2])
#    puts "val #{v}, del #{del},add #{add},"
    v = v - del + add
    max = v if max < v
  end
end
puts max
