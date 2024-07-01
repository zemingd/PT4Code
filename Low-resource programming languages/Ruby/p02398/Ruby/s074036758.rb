n = 0
a,b,c = gets.chomp.split.map(&:to_i)
(a..b).each do |i|
  if c % i == 0
    n += 1
  end
end
puts n