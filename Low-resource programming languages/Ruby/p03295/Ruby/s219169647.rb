n, m = gets.chomp.split(' ').map(&:to_i)
list = m.times.map { gets.chomp.split(' ').map(&:to_i) }

list = list.sort_by{|_a, b| b }
count = 0
cut = 0
list.each do |a, b|
  next if a < cut
  count += 1
  cut = b
end
puts count
