k = gets.chomp.to_i
numbers = []
k.times do |i|
  numbers << i + 1
end

guusuu = []
kisuu = []

guusuu = numbers.select{|n| n % 2 == 0 }
kisuu = numbers.select{|n| n % 2 != 0}

p guusuu.length * kisuu.length