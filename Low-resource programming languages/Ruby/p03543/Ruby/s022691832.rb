N = gets.chomp

if ('0'..'9').any? { |n| N.count(n) >= 3 }
  puts 'Yes'
else
  puts 'No'
end
