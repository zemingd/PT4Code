a = %w(SUN MON TUE WED THU FRI SAT SUN)
s = gets.chomp
a.each_with_index do |y, i|
  if s == y
    puts 7 - i
    exit
  end
end
