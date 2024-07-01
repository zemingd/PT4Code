s = gets.chomp.split('')
max = 0
c = 0
s.each do |a|
  c+= 1 if 'A' == a || 'T' == a || 'G' == a || 'C' == a
  c = 0 if !('A' == a || 'T' == a || 'G' == a || 'C' == a)
  max = [max, c].max
end

p max
  