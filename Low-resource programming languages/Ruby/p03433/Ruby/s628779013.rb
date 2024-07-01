n = gets.chomp.to_i
a = gets.chomp.to_i
#a = gets.chomp.split().map(&:to_i)

if n%500 <= a
  puts 'Yes'
else
  puts 'No'
end