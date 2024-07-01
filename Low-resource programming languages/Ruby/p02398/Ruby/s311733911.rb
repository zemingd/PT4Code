a, b, c = gets.split.map(&:to_i)
count = 0
(a..b).each do |x|
    count+=1 if c % x == 0
end
puts count
