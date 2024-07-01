A = gets.split('/').map(&:to_i)

if A[0] > 2019
  puts 'TBD'
  exit
end
if A[0] == 2019 && A[1] > 4
  puts 'TBD'
  exit
end
if A[0] == 2019 && A[1] == 4 && A[2] > 30
  puts 'TBD'
  exit
end

puts 'Heisei'