a,b,c,k = gets.chomp.split.map(&:to_i)

ans = [a,k].min - [k-a-b,0].max
puts ans