a,b,c,d = gets.split.map(&:to_i)
ans = "Yes"
if (c-b).abs > d && (b-a).abs > d && (a-c).abs > d
  ans = "No"
end
puts ans