house = Array.new(4) do
  Array.new(3) do
    Array.new(10) { 0 }
  end
end
n = gets.to_i
n.times do
  b, f, r, v = gets.split.map(&:to_i)
  house[b - 1][f - 1][r - 1] += v
end

s = house.map do |f|
  line = f.map do |r|
    "\s" + r.join("\s")
  end
  line.join("\n")
end
puts s.join("\n" + ('#' * 20) + "\n")