S = gets.split('')
inner_size = S.slice!(1..-3).size
puts S[0]+"#{inner_size}"+S[1]