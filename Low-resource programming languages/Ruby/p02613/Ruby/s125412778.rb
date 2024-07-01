# frozen_string_literal: true

n = gets.to_i
h = Hash.new(0)
(0...n).each { h[gets.chomp] += 1 }
%w[AC WA TLE RE].each do |res|
  puts "#{res} x #{h[res]}"
end
