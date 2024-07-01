h, w = gets.split(" ").map{|n| n.to_i }
ans = h.times.map{
  gets.strip.split("")
}.reject{|row|
  row.all?{|d| d == "." }
}.transpose.reject{|col|
  col.all?{|d| d == "." }
}.transpose.each{|line|
  puts line.join
}
