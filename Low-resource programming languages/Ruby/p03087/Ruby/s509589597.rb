#! /bin/ruby

n, q  = gets.chomp.split(" ").map(&:to_i)
chars = gets.chomp
t = [0]
(n-1).times do |i|
  if (chars[i] + chars[i+1]) == "AC"
    t[i+1] = t[i] + 1
  else
    t[i+1] = t[i]
  end
end

q.times do |j|
  l, r = gets.chomp.split(" ").map(&:to_i)
  puts t[r-1] - t[l-1]
end
