# frozen_string_literal: true

n = gets.to_i
s = n.times.map { gets.chomp }
h = Hash.new { 0 }
s.each do |e|
  h[e] += 1
end
%w[AC WA TLE RE].each do |e|
  puts e + ' x ' + h[e].to_s
end
