# -*- coding: utf-8 -*-
n = gets.chomp.to_i

a = Array.new(n)

str = gets.chomp
a = str.split.map(&:to_i)

flag = 1
count = 0

while flag == 1 do
  flag = 0
  (n-1).downto(1) do |i|
    if a[i] < a[i-1] then
      change = a[i]
      a[i] = a[i-1]
      a[i-1] = change
      flag = 1
      count += 1
    end
  end
end
for i in 0..n-1 do
  print a[i]
  print " " if i != n-1
end

print "\n", count, "\n"