ary = []
ARGF.each{ |line|
  break if line.to_i == 0
  line.each_char{|c| ary << c.to_i}
  puts ary.inject(:+)
}