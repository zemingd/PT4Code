s = gets
ws = ["Sunny", "Cloudy", "Rainy"]
result = -1
ws.each_with_index{|x, i|
  result = i if x == s
}
if ws.length == result
  puts ws.first
else
  puts ws[result+1]
end