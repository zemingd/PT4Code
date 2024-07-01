a = ['SUN', 'SAT', 'FRI', 'THU', 'WED', 'TUE', 'MON']

s = gets.chomp.to_s

index = a.index(s)

puts index == 0 ? 7 : index