require 'prime'
x=gets.to_i
result = x
(x..10**6).each do |value|
  if Prime.prime_division(value).count == 1
    result = value
    break
  end
end
puts result