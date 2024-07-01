a,v = gets.chomp.split.map(&:to_i)
b,w = gets.chomp.split.map(&:to_i)
t = gets.chomp.to_i

print (v-w)*t >= (a-b).abs ? 'YES' : 'NO'