y, m, d = gets.split('/').map(&:to_i)

if Time.new(2019, 4, 30) >= Time.new(y, m, d)
  puts 'Heisei'
else
  puts 'TBD'
end
