n,m = gets.chomp.split.collect{ |item| item.to_i}
alist = gets.chomp.split.collect{ |item| item.to_i}

m.times do |mi|
  idx = alist.index(alist.max)
  alist[idx] = alist[idx)]/2
end

puts alist.inject(:+)