require 'set'
a,b,c = gets.split.map(&:to_i)
s = Set.new([a, b, c])
puts s.size == 2 ? "Yes" : "No"