a,b,c = gets.split.map &:to_i
message = (c >= a && c <= b ? "Yes" : "No")
puts message
