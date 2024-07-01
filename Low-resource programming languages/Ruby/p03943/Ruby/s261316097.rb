a = gets.chomp.split.map(&:to_i)
max = a.max
if max == a.delete_if{|item| item == max }
  .inject{|sum, n| sum + n }
  puts 'Yes'
else
  puts 'No'
end