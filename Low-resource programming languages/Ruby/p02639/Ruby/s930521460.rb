a= gets.split(' ').map(&:to_i)
for i in 0..a.size
  puts i if a[i].zero?
end
