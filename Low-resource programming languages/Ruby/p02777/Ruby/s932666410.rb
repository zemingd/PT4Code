s, t = gets.split.map(&:to_sym)
list = {}
list[s], list[t] = gets.split.map(&:to_i)
n = gets.chop.to_sym
list[n] -= 1
puts "#{list[s]} #{list[t]}"