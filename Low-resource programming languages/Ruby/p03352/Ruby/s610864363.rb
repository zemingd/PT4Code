n=gets.to_i
maxExponentiation=1
(2..n).each do |number|
  count=2
  loop do
    tempExponentiation = number ** count
    break tempExponentiation if tempExponentiation > n
    maxExponentiation = tempExponentiation if tempExponentiation > maxExponentiation  
    count += 1
  end
end
puts maxExponentiation