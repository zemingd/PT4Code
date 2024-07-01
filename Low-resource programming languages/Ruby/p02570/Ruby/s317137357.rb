D, T, S = gets.split.map(&:to_i)

if S * T < D
  puts 'No'
else
  puts 'Yes'
end
