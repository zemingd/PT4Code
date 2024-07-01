X, A = gets.chomp.split.map(&:to_i)

if X < A
  puts 0
else X >= A
  puts 10
end
