N = gets.to_i

f_min = 1000000000000000000000
a_max = Math.sqrt(N).to_i + 1
(1..a_max).each do |a|
  if N % a == 0
   b = N / a
   a_digit = Math.log10(a).to_i + 1
   b_digit = Math.log10(b).to_i + 1
   can = [a_digit, b_digit].max
   f_min = [f_min, can].min
  else
    next
  end
end

p f_min