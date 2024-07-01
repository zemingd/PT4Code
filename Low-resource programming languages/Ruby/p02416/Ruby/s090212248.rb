ARGF.each{ |line|
  a = line.split.map(&:to_i)
  break if a.inject(:+) == 0
  puts a.inject(:+)
}