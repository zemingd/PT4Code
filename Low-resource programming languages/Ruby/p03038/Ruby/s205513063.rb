n, m = gets.rstrip.split.map(&:to_i)
as   = gets.rstrip.split.map(&:to_i).sort

bs = []
m.times do | i |
  bs[i] = gets.rstrip.split.map(&:to_i).reverse
end
bs.sort!.reverse!

i = 0
bs.each do | b |
  b[1].times do
    if i < n && as[i] < b[0]
      as[i] = b[0]
    else
      puts as.inject(:+)
      exit
    end
    i += 1
  end
end

puts as.inject(:+)