n = gets.to_i
p = gets.chomp.split(" ", n).map(&:to_i)

ans = 0
min = p[0]
p.each.with_index do |pp, i|
  if min >= pp
    ans += 1
  end
  if min > pp
    min = pp
  end
end
p ans