S = gets.chomp.chars
src = ("01" * 100001).chars

p [0, 1].map{|l|
  S.zip(src[l, S.size]).count{|a, b|
    a != b
  }
}.min