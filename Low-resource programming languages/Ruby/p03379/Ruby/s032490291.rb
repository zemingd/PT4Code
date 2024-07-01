n = gets.to_i
a = gets.chomp.split(' ').map(&:to_i)

med2 = a.sort[(n/2-1),2]
first_med = med2.first
last_med = med2.last

a.each do |i|
  if first_med >= i
    puts last_med
  else
    puts first_med
  end
end