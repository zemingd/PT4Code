n = gets.to_i
s = gets.chomp.split('')
ar = Array.new

n.times do |i|
  ar[i] = s[0...i].count('W') + s[i+1...n].count('E')
end
puts ar.min