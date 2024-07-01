A, B, C = gets.split.map(&:to_i)
if Math.sqrt(A) + Math.sqrt(B) < Math.sqrt(C)
  puts 'Yes'
else
  puts 'No'
end