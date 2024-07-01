n = gets.to_i

Math.sqrt(n).to_i.downto 1 do |i|
  if n%i == 0
    big = n/i
    puts Math.log(big, 10).to_i + 1
    break
  end
end
