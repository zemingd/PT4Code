#n = gets.chomp.to_i
#a = gets.chomp.split().map(&:to_i)
s = gets.chomp

if s == 'Sunny'
  puts 'Cloudy'
elsif s == 'Cloudy'
  puts 'Rainy'
else
  puts 'Sunny'
end