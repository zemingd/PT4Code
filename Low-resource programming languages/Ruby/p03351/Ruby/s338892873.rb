a,b,c,d = gets.split.map(&:to_i)

b1 = (a-c).abs <= d
b2 = (a-b).abs <= d && (b-c).abs <= d
ret = b1||b2 ? 'Yes' : 'No'
puts ret