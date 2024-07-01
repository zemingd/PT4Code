N, A, B = gets.chomp.split(" ").map(&:to_i)

if (B - A) % 2 == 0 then
  puts (B - A) / 2
  exit
end

if B < (N - A) + 1 then
  puts (B + A) / 2
else
  puts ((N - B) + (N - A)) / 2 + 1
end