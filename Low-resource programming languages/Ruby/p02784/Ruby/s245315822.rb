h, n = gets.split(' ').map(&:to_i)
a = gets.split(' ').map(&:to_i)
(0...a.size).each do |i|
  h -= a[i]
end
if h > 0
  puts 'NO'
else
  puts 'Yes'
end