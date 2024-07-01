require 'prime'

X = gets.to_i

X.downto(1) do |k|
  factor = k.prime_division
  m = factor.map{ |a| a[1] }.uniq
  if m != [1] and 1 == m.size
    puts k
    exit
  end
end

puts 1