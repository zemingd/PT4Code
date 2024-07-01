n = gets.split("").map(&:to_i)

print ([n.count(1),n.count(0)].min*2)