ary = gets.split(&:to_s)
puts (ary.join.to_i % 4).zero? ? 'YES' : 'NO'