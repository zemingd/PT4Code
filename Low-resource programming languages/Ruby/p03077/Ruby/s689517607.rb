N = gets.to_i
cap = []
5.times{
  cap << gets.to_i
}

if N < cap.min
  puts 5
else
  puts 5 + (N/cap.min.to_f).ceil
end