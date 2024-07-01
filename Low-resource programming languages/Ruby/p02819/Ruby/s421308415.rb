require 'prime'
x=gets.to_i
result = x
(x..10**6).each do |value|
  prime_divison = Prime.prime_division(value)
  if prime_divison.count == 1 && prime_divison[0][1] == 1
    result = value
    break
  end
end
puts result