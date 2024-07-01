#!/usr/bin/env ruby

s = gets.chomp

size = s.size
a = ''
b = ''
i = '0'
size.times do
  a += i
  if i == '0'
    i = '1'
  else
    i = '0'
  end
  b += i
end

res1 = s.to_i(2) ^ a.to_i(2)
res2 = s.to_i(2) ^ b.to_i(2)

aa = res1.to_s(2).split(//).map(&:to_i).inject(:+)
bb = res2.to_s(2).split(//).map(&:to_i).inject(:+)
max = aa < bb ? aa : bb
puts max
