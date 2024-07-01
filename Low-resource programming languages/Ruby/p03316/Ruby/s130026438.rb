N = gets.chomp

sum = 0
N.size.times do |i|
  sum += N[i].to_i
end

if N.to_i % sum == 0
  puts 'Yes'
else
  puts 'No'
end