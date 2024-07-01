n=gets.to_i
(n**0.5).ceil.downto(1) do |i|
  next unless n%i==0
  puts (n/i).to_s.size
  exit
end