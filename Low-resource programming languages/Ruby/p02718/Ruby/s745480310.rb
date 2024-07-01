n,m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

a_all = a.inject(:+)
line = a_all / m / 4.0

puts a.sort.reverse[m-1] < line ? 'No' : 'Yes'
