#!/usr/bin/env ruby
a = Array.new(3, gets.split(" ").map(&:to_i))
n = gets.to_i
n.times do
  b = gets.to_i
  3.times do |i|
    a[i].map! do |k|
      k == b ? 0 : k
    end
  end
end
flag = false
a.each do |l|
  if l.inject(&:+)  == 0
    flag = true
    break
  end
end
a.transpose.each do |l|
  if l.inject(&:+)  == 0
    flag = true
    break
  end
end
flag = true if (a[2][0] == 0 && a[1][1] == 0 && a[0][2] ==  0) || (a[0][0] == 0 && a[1][1] == 0 && a[2][2] ==  0)
puts flag ? "Yes" : "No"