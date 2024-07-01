n,m,x = gets.strip.split.map(&:to_i)
num = gets.strip.split.map(&:to_i)
sd = num.count{|y| y>x}
puts [sd,m-sd].min