(a,b,c) = gets.split().map(&:to_i)
count=0
(a..b).each {|x| count += 1 if c%x == 0}
puts count