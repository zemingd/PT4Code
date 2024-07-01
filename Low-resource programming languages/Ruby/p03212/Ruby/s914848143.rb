n = gets.to_i
M = 10
rs = []
cnts = (1..M).map do |m|
  [3,5,7].repeated_permutation(m) do |arr|
    rs << arr.join.to_i
  end
end
p rs.bsearch_index{|x|x > n}

