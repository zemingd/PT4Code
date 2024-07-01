num = gets.to_i
s_hen = num / 3.to_f

even_short = s_hen.floor
even_large = s_hen.ceil


if num % 2 == 0
  puts even_short * even_short * even_large
else
  puts s_hen ** 3
end


