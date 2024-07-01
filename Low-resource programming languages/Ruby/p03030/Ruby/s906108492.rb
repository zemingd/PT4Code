N = gets.to_i

S_P = [*0...N].map{|i|
    s, p = gets.split
    [i + 1, s, p.to_i]
}.sort_by{|i, s, p| [s, -p]}

S_P.each{|i, _, _| p i}
