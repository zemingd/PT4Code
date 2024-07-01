n = gets.split.first.to_i
xs = gets.split.map(&:to_i) 

xs.size.times do |i|
  deleted_xs = xs.clone
  deleted_xs.delete_at(i)
  tmp_xs = deleted_xs.sort
  puts tmp_xs[ (n / 2) - 1]
  STDOUT.flush
end