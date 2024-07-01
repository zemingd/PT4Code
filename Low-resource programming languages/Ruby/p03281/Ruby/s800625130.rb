require 'prime'

n = gets.to_i
cnt = 0

(1..n).each do |number|
  if Prime.prime_division(number).map {|p, e| e + 1 }.inject(:*) == 8 && number.odd?
    cnt += 1
  end
end

puts cnt