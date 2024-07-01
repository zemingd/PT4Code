lines = STDIN.readlines.map(&:chomp)
n = lines.shift.to_i

c = 0
n.times do |i|
  si = lines[i].each_char.sort
  for j in (i + 1 ... n) do
    sj = lines[j].each_char.sort
    if si == sj
      c += 1
    end
  end
end

puts c