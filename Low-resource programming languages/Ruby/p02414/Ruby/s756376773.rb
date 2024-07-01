n, m, l = gets.chomp.split(/\s+/).map(&:to_i)

arr = []
brr = []

n.times do 
  arr << gets.chomp.split(/\s+/).map(&:to_i).to_a
end
m.times do 
  brr << gets.chomp.split(/\s+/).map(&:to_i).to_a
end

require 'matrix'

crr = Matrix[*arr] * Matrix[*brr]

crr.to_a.each {|r| puts r.join(" ")}
