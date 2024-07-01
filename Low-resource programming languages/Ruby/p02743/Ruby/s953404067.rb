A, B, C = gets.split.map(&:to_i)
D = A + B + 2 * Math.sqrt(A * B)

if D < C
  puts 'Yes'
else
  puts 'No'
end
