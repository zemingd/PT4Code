N = gets.to_i
C = Hash.new{|h, k| h[k] = 0}
N.times{
  C[gets.chomp.unpack('c*').sort.pack('c*')] += 1
}

ans = 0
C.each{|k, v|
  ans += ((v * (v - 1)) / 2) 
}

puts ans
