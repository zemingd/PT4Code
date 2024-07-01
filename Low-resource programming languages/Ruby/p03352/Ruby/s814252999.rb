require 'prime'
x = gets.to_i
if x == 1
  puts 1
else
  while true
    if Prime.prime_division(x).size == 1 && Prime.prime_division(x)[0][1] != 1
      break
    end
    x -= 1
  end
  puts Prime.prime_division(x)[0][0] ** Prime.prime_division(x)[0][1]
end