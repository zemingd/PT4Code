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
    s.each.with_index.select(&:first).each do |_, j|
      return 0 if as[j].any? { |k, b| s[k] != b }
    end.length
  else
    s[i] = true
    r1 = solve.(i+1, s)
    s[i] = false
    r2 = solve.(i+1, s)
    r1 > r2 ? r1 : r2
  end
}

puts solve.(0, Array.new(n))