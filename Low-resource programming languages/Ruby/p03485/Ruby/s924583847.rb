a, b = gets.chomp.split.map(&:to_i) 

ans = ((a + b).to_f / 2)

puts ans.ceil
