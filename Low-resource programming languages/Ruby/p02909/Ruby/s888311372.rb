a = %w(Sunny Cloudy Rainy)
s = gets.chop.to_s

case a.index(s)
when 0
  puts 'Cloudy'
when 1
  puts 'Rainy'
when 2
  puts 'Sunny'
end
