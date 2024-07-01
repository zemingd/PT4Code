n,k = gets.split.map(&:to_i)
s = gets.chomp
cs= s.chars
cs[k-1].downcase!
puts cs*''
