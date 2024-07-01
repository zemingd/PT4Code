a = gets.chomp
b = gets.chomp

if /^#{a}[a-z]{1}/ === b then
  puts 'Yes'
else
  puts 'No'
end
