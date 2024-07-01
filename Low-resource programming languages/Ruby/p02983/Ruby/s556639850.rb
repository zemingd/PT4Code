L, R = gets.split(' ').map{|n| n.to_i}
if R - L >= 2018
  puts 0
  exit
end
min = 2019
(L..R).each do |v|
  min = v % 2019 if v % 2019 < min
end
puts (min * (min + 1)) % 2019