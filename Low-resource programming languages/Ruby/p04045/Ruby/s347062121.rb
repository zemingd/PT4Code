n_l = gets.chomp.split(' ')
ds = gets.chomp.split(' ').map(&:to_i)
price = n_l[0].chars

price.each_with_index do |n, index|
  price[index] = n.to_i
end

price.each_with_index do |n, index|
  n = price[index]
  while(ds.include?(n))
    n += 1
  end
  price[index] = n
end

puts price.join

