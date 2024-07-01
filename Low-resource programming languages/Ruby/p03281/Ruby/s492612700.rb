require 'prime'
n = gets.chomp.to_i;
count = 0
1.step(n, 2) do |i|
    count += 1 if Prime.prime_division(i).map {|p, e| e + 1 }.inject(:*) == 8
end
puts count