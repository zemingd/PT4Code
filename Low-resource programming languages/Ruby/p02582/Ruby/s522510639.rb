s = gets.chomp.split('S')
max = 0
s.each do |t|
  max = t.size if max < t.size
end
puts max