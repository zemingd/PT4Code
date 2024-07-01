N, A, B = gets.split(" ").map(&:to_i)
if A % 2 == B % 2
  puts (B - A) / 2 
else
  if N - A < B - 1
    puts ((2 * N- A - B + 1) / 2)
  else
    puts ((A + B - 1) / 2)
  end
end