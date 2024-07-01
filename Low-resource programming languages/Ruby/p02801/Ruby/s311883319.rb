c = gets.chop


al = ('a'..'z').to_a


idx = al.index{ |item| item == c}

puts al[idx+1]
