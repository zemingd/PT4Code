X=gets.to_i
max = 0
1.upto(X){|b|
  2.upto(X){|p|
    bp = b**p
    max = bp if bp <= X and bp > max
    break if bp > X
  }
}
p max