N, A, B = gets.split(" ").map(&:to_i)
if A % 2 == B % 2
  puts (B - A) / 2 
else
  if N - A < B
    puts N-A
  else
    puts B-1
  end
end