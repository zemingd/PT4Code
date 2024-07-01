require 'prime'
x = gets.to_i
x.downto(1) do |i|
  f = i.prime_division
  if f.all? { |i| i[1] >= 2 }
    p f
    p i
    break
  end
end