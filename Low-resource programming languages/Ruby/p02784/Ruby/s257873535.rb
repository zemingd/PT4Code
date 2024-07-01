h, n = gets.chomp.split(' ').map{|i| i.to_i }
sum = 0
gets.chomp.split(' ').map{|i| sum += i.to_i }
if sum >= h
  puts 'Yes'
else
  puts 'No'
end
