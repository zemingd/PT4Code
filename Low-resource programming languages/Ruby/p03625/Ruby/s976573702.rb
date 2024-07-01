n = gets.to_i
A = gets.split().map(&:to_i)
B = A.uniq.sort.reverse

C = B.map do |b|
  [b, A.count(b)]
end

# p H.to_h
C.select! do |c|
  c[1] >= 2
end

if C != []
  rec = C[0][0]*C[1][0]
else
  rec = 0
end

D = C.select {|c| c[1] >= 4}
if D != []
  sq = D[0][0]**2
else
  sq = 0
end

# p rec
# p sq
p [rec,sq].max