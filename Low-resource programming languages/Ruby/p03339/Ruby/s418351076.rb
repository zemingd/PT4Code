N, S = gets.to_i, gets.chomp
min = N

0.upto(N-1) do |pos|
  fh = S[0...pos].count("W")
  rh = S[(pos+1)..-1].count("E")
  min = (fh+rh) if (fh+rh) < min
end

puts min