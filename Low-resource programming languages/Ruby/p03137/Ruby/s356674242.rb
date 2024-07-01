n, m = gets.split(' ').map(&:to_i)
k = m - n
xs = gets
if k <= 0
  puts 0
else
  puts xs.split(' ').map(&:to_i).sort.each_cons(2).map{|x| x[1] - x[0] }.sort.first(k).inject(&:+)
end
