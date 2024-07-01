#  = gets.chomp.to_i
# A, B, C = gets.chomp.split.map(&:to_i)
S = gets.chomp

if S == 'Sunny'
  print "Cloudy\n"
elsif S == 'Cloudy'
  print "Rainy\n"
elsif S == 'Rainy'
  print "Sunny\n"
else 
  raise "Invalid!"
end
