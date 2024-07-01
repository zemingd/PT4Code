A,B,C,X = readlines.map(&:to_i)
puts [*0..A].product([*0..B], [*0..C]).count {|a,b,c|
  500 * a + 100 * b + 50 * c == X
}
