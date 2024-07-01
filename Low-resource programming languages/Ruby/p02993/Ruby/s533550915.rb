def lscan;gets.split.map(&:to_i);end

a = gets.chomp

if a[0] == a[1] || a[1] == a[2] || a[2] == a[3]
  puts 'Bad'
else
  puts 'Good'
end