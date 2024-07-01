S = gets.chomp

days = [ 'SUN', 'MON', 'TUE', 'WED', 'THU', 'FRI', 'SAT' ]

days.each_with_index do |value, index|
  if S == value
    puts 7 - index
    exit 0
  end
end
