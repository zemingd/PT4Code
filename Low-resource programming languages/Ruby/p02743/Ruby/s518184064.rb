(A, B, C) = gets.split.map(&:to_i)

if A+B+2*Math.sqrt(A*B) < C
  puts 'Yes'
else
  puts 'No'
end
