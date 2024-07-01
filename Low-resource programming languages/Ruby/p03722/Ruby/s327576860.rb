N, M = gets.split.map &:to_i
A = $<.map {|l| l.split.map &:to_i }

d = [-1e100] * N
d[0] = 0

(M+1).times do
  A.each do |a,b,c|
    d[b-1] = [d[b-1], d[a-1]+c].max
  end
end

e = d.dup

N.times do
  A.each do |a,b,c|
    d[b-1] = [d[b-1], d[a-1]+c].max
  end
end

puts d == e ? d[N-1] : 'inf'