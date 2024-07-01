require 'bigdecimal'
input = STDIN.read.split("\n")
input.shift.to_i.times.map do
  # x1, y1, x2, y2, x3, y3, x4, y4 = input.shift.chomp.split.map { |e| (e.to_f * 100_000).floor.to_f }
  x1, y1, x2, y2, x3, y3, x4, y4 = input.shift.chomp.split.map { |e| BigDecimal.new(e) }
  if y1 == y2 && y3 == y4
    puts 'YES'
    next
  end
  ab = (y2 - y1) / (x2 - x1)
  cd = (y4 - y3) / (x4 - x3)
  puts(ab == cd ? 'YES' : 'NO')
end