#!/usr/bin/ruby
# encoding: utf-8

# ABC 109 B Shiritori
# input
n = gets.to_i
w = Array.new(n,"")
(0..n-1).each do |i|
  w[i] = gets.chomp
end

# true:"Yes",false:"No"
ans = true

(1..n-1).each do |i|
  if w[i][0] != w[i-1][-1]
    puts "No"
    exit
  end
end

(0..n).each do |i|
  (0..i-1).each do |j|
    if w[i] == w[j]
      puts "No"
      exit
    end
  end
end

puts "Yes"
