n = gets.split.first.to_i
xs = gets.split.map(&:to_i) 

ans = []
xs.size.times do |i|
  deleted_xs = xs.clone
  deleted_xs.delete_at(i)
  tmp_xs = deleted_xs.sort
  ans << tmp_xs[ (n / 2) - 1]
end

puts ans