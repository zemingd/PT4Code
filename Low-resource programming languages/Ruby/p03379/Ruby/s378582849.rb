n = gets.to_i
data = gets.split(" ").map{|v|
  v.to_i
}
sorted = data.sort
len = sorted.length
mid = sorted[len / 2]
bm = sorted[len / 2 - 1]
data.each{|d|
  puts "#{d <= bm ? mid : bm}"
}
