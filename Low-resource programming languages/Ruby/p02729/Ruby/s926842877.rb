even, odd = gets.split

even = even.to_i
odd = odd.to_i

puts (even * (even - 1 ) / 2 ) + ( odd * (odd - 1 ) / 2 )