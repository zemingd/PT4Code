n = gets.chomp.to_i
as = Array.new(n)
n.times do |i|
  as[i] = []
  a = gets.chomp.to_i
  a.times do
    xy = gets.split.map(&:to_i)
    xy[0] -= 1
    xy[1] = xy[1] == 1
    as[i] << xy
  end
end

solve = ->i,s {
  if i == n
    (0...n).select { |j| (s&(1<<j)) != 0 }.each do |j|
      return 0 if as[j].any? { |k, b| ((s&(1<<k)) != 0) != b }
    end.length
  else
    r1 = solve.(i+1, s)
    r2 = solve.(i+1, s | (1<<i))
    r1 > r2 ? r1 : r2
  end
}

puts solve.(0, 0)