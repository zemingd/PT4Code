#!/usr/bin/ruby
#encoding: utf-8

n = gets.to_i
w = gets.split.map(&:to_i)

s1 = Array.new(n+1,0)
s2 = Array.new(n+1,0)

sum = w.inject(:+)
ans = 100000
tmpans = 0

(0..n-1).each do |i|
  (0..i).each do |j|
    #puts "i=#{i},j=#{j}"
    s1[i] += w[j]
  end

  s2[i] = sum - s1[i]
  tmpans = (s2[i] - s1[i]).abs

  if ans >= tmpans then
    ans = tmpans
  end
end

puts ans
