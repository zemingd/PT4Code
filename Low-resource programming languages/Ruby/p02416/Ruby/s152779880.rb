ARGF.each{ |line|
  break if line == "0"
  a = line.split("").map(&:to_i)
  puts a.inject(:+)
}