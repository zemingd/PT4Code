require 'prime'
x = gets.to_i
x.downto(1) do |i|
  factors = i.prime_division
  if factors.empty? || (factors.length == 1 && factors.first[1] >=2)
    p i
    break
  end
end