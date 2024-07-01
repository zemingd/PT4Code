n = gets.split.map(&:to_i)
n.sort!{|a, b| b <=> a}
puts n[0]*10 + n[1] + n[2]