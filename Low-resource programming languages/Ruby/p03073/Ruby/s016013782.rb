S = gets.chomp.chars.map{ |c| c.to_i }
p [0,1].map{ |d|
  (0...S.size).reduce(0){ |a,i|
    a + ((i+d) % 2 == S[i] ? 0 : 1)
  }
}.min