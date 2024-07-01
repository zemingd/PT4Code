S = gets.chomp
dates = ['SAT', 'FRI', 'THU', 'WED', 'TUE', 'MON', 'SUN']
dates.each_index do |idx|
  puts idx.to_i + 1 if dates[idx] === S
end