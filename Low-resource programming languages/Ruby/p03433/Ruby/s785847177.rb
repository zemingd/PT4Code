input = readlines()

n = input.shift.chomp.to_i
a = input.shift.chomp.to_i

rem = n % 500

puts rem <= a ? 'Yes' : 'No'