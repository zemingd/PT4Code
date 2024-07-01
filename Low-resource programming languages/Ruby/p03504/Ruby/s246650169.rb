lines = $stdin.read
array = lines.split("\n")

N,C   = array[0].split(" ").map(&:to_i)
s,t,c = [],[],[]

array[1..N].each do |line|
  s0,t0,c0 = line.split(" ").map(&:to_i)
  s << s0
  t << t0
  c << c0
end

sm = Array.new(200002){0}
tt = []

for i in 1..C
  tt = Array.new(200002){0}

  for j in 0..N
    if c[j] == i
      tt[s[j]*2-1] += 1
      tt[t[j]*2]   -= 1
    end
  end
  for j in 1...200002 do
    tt[j] += tt[j-1]
  end
  for j in 0...200002 do
    sm[j] += 1 if (tt[j] > 0)
  end
end

mx = 0
for j in 0...200002
  mx = sm[j] if mx<sm[j]
end

puts mx