d, t, s = gets.chomp.split.map(&:to_i)
ans = d/s <= t ? 'Yes' : 'No' 
puts ans