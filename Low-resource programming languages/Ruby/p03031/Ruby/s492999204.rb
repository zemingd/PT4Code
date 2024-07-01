n, m = gets.split.map(&:to_i)
lights = m.times.map { gets.split.map(&:to_i)[1..-1] }
ps = gets.split.map(&:to_i)

ans = (2**n).times.count do |switches|
  m.times.all? { |i| lights[i].count { |s| switches[s - 1] == 1 } % 2 == ps[i] }
end
puts ans