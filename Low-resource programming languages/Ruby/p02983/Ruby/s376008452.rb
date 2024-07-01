l,r = gets.chomp.split(" ").map(&:to_i)

l = l % 2019
r = r % 2019

if r < l then
  tmp = l
  l = r
  r = tmp
end

if l == 0 || l == r then
  puts 0
  exit 0
end

min = 2018
(l..r-1).each do |i|
  (i+1..r).each do |j|
    mod = (i * j) % 2019
    min = mod if mod < min
  end
end

puts min
