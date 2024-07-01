n = gets.split.first.to_i
xs = gets.split.map(&:to_i) 

xs_wi = []
xs.each_with_index {|v, i| xs_wi << [v, i]}

ans = []
xs_wi.sort!{|a, b| a[0] <=> b[0]}
xs.size.times do |i|
  deleted_xs = xs_wi.clone
  deleted_xs.delete_if{|v| v[1] == i}
  ans << deleted_xs[ (n / 2) - 1][0]
end

puts ans