readlines.each{|l|
  l=="0\n"&&break
  puts l.chars.map(&:to_i).inject(:+)
}