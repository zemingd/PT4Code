n = gets.to_i
div = 0
Math.sqrt(n).floor.downto(1) do |i|
  if n % i == 0
    div = i
    break
  end
end
p [div.to_s.size, (n/div).to_s.size].max