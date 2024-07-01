inputs = Array.new
while line = $stdin.gets
  inputs << line.chomp
end

N = inputs[0].split(" ").map(&:to_i)[0]
ws = inputs[1].split(" ").map(&:to_i)

all = ws.reduce(&:+)

arrs = []
i = 1
s1 = 0
s2 = all
while i < N
  s1 = s1 + ws[i - 1]
  s2 = s2 - ws[i - 1]
  arrs << (s1 - s2).abs

  i += 1
end

puts arrs.min