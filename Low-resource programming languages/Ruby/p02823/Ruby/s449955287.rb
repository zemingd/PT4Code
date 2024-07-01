N, A, B = gets.chomp.split(" ").map{|s| s.to_i }

if (B - A) % 2 == 0
  puts (B - A) / 2
else
  diff = (B - A - 1) / 2
  puts [A, N-B+1].min + diff
end