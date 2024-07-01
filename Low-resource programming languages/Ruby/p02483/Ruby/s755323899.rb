require 'scanf'

s = gets.split.map(&:to_i).sort
puts sprintf("%d %d %d",s[0],s[1],s[2])