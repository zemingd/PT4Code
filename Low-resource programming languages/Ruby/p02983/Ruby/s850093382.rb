L, R = gets.split(' ').map{|n| n.to_i}
puts 0 and exit if R - L >= 2018
min = 2019
(L..R).each do |v|
  min = v % 2019 if v % 2019 < min
end
puts min * (min + 1)