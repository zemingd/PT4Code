s = gets.chomp
k = gets.to_i
s.split("").each do |c|
  if c.to_i == 1
    k -= 1
  end
  if k <= 0 || c.to_i != 1
    puts c
    break
  end
end
