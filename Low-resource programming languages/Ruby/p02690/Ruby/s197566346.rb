X = gets.to_i

n = (X**0.2).to_i
puts [*(-n-1)..(n+1)].repeated_permutation(2) {|a,b|
  break [a,b].join(' ') if a**5-b**5 == X 
}