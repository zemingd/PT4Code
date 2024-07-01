s=gets().chomp()

if s=~/(.)\1/ then
  puts "Bad"
else
  puts "Good"
end