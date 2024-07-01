N, M = gets.split.map &:to_i
A = $<.map {|l| l.split.map &:to_i }

d = [-1e100] * N
d[0] = 0

M.times do
  E = d.dup
  A.each do |a,b,c|
    d[b-1] = [d[b-1],d[a-1]+c].max
  end
end

puts d == E ? d[N-1] : 'inf'
