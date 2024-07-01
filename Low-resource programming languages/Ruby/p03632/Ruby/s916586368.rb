a,b,c,d = gets.split.map(&:to_i)
alice = b - a
bob = d - c
puts [alice,bob].min