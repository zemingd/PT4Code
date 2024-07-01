require "prime"

n = gets.to_i
count = 0

(1..n).each do |i|
  next if i % 2 == 0
  if i.prime_division.map{|a|a[1]}.reduce(1){|a,e| a*=e+1} == 8
    count += 1
  end
end

puts count