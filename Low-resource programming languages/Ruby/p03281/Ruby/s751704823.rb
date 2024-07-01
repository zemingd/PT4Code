p (1..gets.to_i).count{|i|
  i.odd? && (1..i).count{|j|
    i%j==0
  } == 8
}