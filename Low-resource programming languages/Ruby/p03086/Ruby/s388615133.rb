s = gets.chomp.split('')
s.map! { |x| (x == 'A' || x == 'C' || x == 'G' || x == 'T') ? x : ' ' }
array = s.join.split(' ').map { |y| y.length }
if array.empty?
  puts '0'
else
  puts array.max
end
