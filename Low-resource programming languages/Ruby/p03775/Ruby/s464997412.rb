n = gets.to_i

Math.sqrt(n).to_i.downto(1) do |i|
  if n % i == 0
    puts (n / i).to_s.size
    exit
  end
end