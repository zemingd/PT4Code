n = gets.to_i
a = gets.chomp.split('')

min = n

(0...n).each do |i|
  l = a[0...i].count { |s| s != 'E' }
  r = a[i+1...n].count { |s| s != 'W' }
  min = l+r if l+r < min
end
puts min