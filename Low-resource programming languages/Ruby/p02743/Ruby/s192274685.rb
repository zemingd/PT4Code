(A, B, C) = gets.split.map(&:to_i)

if Math.sqrt(A*B) < (C - A - B) / 2.to_f
#if Math.sqrt(A) + Math.sqrt(B) < Math.sqrt(C)
#if (A+B-C)**2 < 4*A*B
  puts 'Yes'
else
  puts 'No'
end
