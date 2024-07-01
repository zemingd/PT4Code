require "prime"
n = gets.chomp.to_i
  
ans = (1..n).to_a.count do |num|
  num.odd? &&
    Prime.prime_division(num).inject(1){|res, tmp| res * (tmp.last + 1)} == 8
end
puts ans
