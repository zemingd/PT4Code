$<.to_a.reverse.drop(1).reverse.map{|l|p l.chars.map(&:to_i).reduce(:+)}

