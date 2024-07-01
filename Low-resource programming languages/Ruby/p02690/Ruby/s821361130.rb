X = gets.to_i
puts [*-120..120].repeated_permutation(2) {|a,b|
  break "#{a} #{b}" if a**5-b**5 == X
}