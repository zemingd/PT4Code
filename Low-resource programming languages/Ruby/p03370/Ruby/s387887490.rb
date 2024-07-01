n, x = gets.chomp.split(' ').map(&:to_i)

m = Array.new
[*0..(n-1)].each{|i|
  mm = gets.to_i
  m.push( mm )
  x -= mm
}

m = m.sort

puts n + x / m[0]
