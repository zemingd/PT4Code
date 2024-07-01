S, i, iszero = gets.chomp, 0, true
S.chars {|c|
  i += 1 if (iszero ? c != '0' : c != '1')
  iszero = !iszero
}
p [i, S.size - i].min