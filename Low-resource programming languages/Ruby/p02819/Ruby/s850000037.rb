require 'prime'

X = gets.chomp.to_i
i = 0
until Prime.prime?(X + i)
    i += 1
end 

puts X + i