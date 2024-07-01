x = gets.to_i

pows = {}
(-100..100).each_with_object(pows) { |num, result| result[num ** 5] = num}

answer = pows.keys.repeated_permutation(2).find { |a_5, b_5| a_5 - b_5 == x }

puts answer.map { |n| pows[n] }.join(' ')
