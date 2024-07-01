n = gets.chomp.to_i
u = Math.sqrt(n).floor
u.downto(1) do |i|
  if n % i == 0
    puts [i.to_s.size, (n/i).to_s.size].max
    exit
  end
end
