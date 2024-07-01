D = gets.split(/\//).map(&:to_i)

if D[0] >= 2019 && D[1] >= 5 && D[2] >= 1
  puts 'TBD'
else
  puts 'Heisei'
end