ARGF.each{ |line|
  break if line.to_i == 0
  a = line.split("").map(&:to_i)
  puts a.inject(:+)
}