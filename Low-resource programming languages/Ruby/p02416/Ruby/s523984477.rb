ARGF.each{ |line|
  a = line.split.map(&:to_i)
  puts a.inject(:+)
}