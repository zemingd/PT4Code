N, L = gets.split.map(&:to_i)

slist = N.times.map{gets.chomp}.sort
puts slist.join