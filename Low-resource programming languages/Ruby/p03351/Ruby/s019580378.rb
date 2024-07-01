a, b, c, d = gets.split.map(&:to_i)
print (a-c).abs <= d || (a-b).abs <= d && (b-c).abs <= d ? "Yes" : "No"