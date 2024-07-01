readlines.map(&:chomp).each{|l|
  l=="0"&&break
  puts l.split("").map(&:to_i).inject(:+)
}