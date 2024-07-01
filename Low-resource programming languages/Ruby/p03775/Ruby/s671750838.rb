n = gets.to_i

Integer.sqrt(n).downto(1) do |i|
    x, y = n.divmod(i)
    next if y != 0
    puts x.to_s.size
    break
end