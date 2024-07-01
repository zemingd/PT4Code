n, m = gets.chomp.split(' ').map(&:to_i)

if n >= m
  puts 0
  return
end

x = gets.chomp.split(' ').map(&:to_i)
puts x.sort.each_cons(2).map { |a| a[1] - a[0] }.sort.first(m - n).sum
