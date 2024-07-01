n = gets.to_i
a = gets.chomp.split(" ")

n.times { |i|
  print "#{a[-(i+1)]}"
  print " " unless i == n-1
}
puts