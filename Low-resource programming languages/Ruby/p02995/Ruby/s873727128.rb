A,B,C,D = gets.split.map(&:to_i)
div = D.lcm(C)
total = B-(B/C)-(B/D)+(B/div)
left = (A-1)-((A-1)/C)-((A-1)/D)+((A-1)/div)
puts total-left