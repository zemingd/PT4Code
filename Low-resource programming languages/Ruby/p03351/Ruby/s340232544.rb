a,b,c,d = gets.split.map(&:to_i)
ans = "Yes"
ans = "No" if (a-b).abs > d && (b-c).abs > d && (c-a).abs > d
puts ans