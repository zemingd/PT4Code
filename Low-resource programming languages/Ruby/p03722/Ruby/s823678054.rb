N, M = gets.split.map &:to_i
A = $<.map {|l| l.split.map{|x| x.to_i }}

d = [-1e100] * N
d[0] = 0

M.times do
  A.each do |a,b,c|
    x = d[a-1] + c
    d[b-1] = x if d[b-1] < x
  end
end

e = d[N-1]

M.times do
  A.each do |a,b,c|
    x = d[a-1] + c
    d[b-1] = x if d[b-1] < x
  end
end

puts d[N-1] == e ? d[N-1] : 'inf'
