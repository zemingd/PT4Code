l, r = gets.chomp.split.map(&:to_i)
if l%2019 == 0 || r-l >= 2019 || r%2019 < l%2019
  puts(0)
  exit
end

l, r = l%2019, r%2019

min = 2018
(l..r).each do |i|
  ((i+1)..r).each do |j|
    tmp = (i*j)%2019
    min = tmp if min > tmp
  end
end

puts(min)