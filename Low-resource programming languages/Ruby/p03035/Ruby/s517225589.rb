A, B = gets.split.map(&:to_i)

if(A <= 5)
  puts(0)
elsif(6 <= A && A <= 12)
  puts(B/2)
else
  puts(B)
end
