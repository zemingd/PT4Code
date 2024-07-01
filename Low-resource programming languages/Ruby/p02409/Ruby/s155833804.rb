no1 = [Array.new(10, 0), Array.new(10, 0), Array.new(10, 0)]
no2 = [Array.new(10, 0), Array.new(10, 0), Array.new(10, 0)]
no3 = [Array.new(10, 0), Array.new(10, 0), Array.new(10, 0)]
no4 = [Array.new(10, 0), Array.new(10, 0), Array.new(10, 0)]

gets # ignore n
while line = gets
  b, f, r, v = line.chomp.split.map(&:to_i)
  case b
  when 1 then no1[f-1][r-1] += v
  when 2 then no2[f-1][r-1] += v
  when 3 then no3[f-1][r-1] += v
  when 4 then no4[f-1][r-1] += v
  end
end

no1.each { |f| puts " " + f.join(" ") }
puts "#" * 20
no2.each { |f| puts " " + f.join(" ") }
puts "#" * 20
no3.each { |f| puts " " + f.join(" ") }
puts "#" * 20
no4.each { |f| puts " " + f.join(" ") }

