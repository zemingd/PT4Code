N, A, B = gets.chomp.split(" ").map{|s| s.to_i }

if (A - B) % 2 == 0
  puts (A-B).abs / 2
else
  puts [B, N-A].max - 1
end