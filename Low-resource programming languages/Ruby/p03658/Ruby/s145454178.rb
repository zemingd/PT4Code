n,k = gets.split(" ").map(&:to_i)
len = gets.split(" ").map(&:to_i)
puts len.sort![-k,k].inject(:+)