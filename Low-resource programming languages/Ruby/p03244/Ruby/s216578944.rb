n = gets.to_i
v = gets.split.map(&:to_i)
e = Hash.new(0)
o = Hash.new(0)

v.each_with_index do |i, idx|
  idx.even? ? e[i] += 1 : o[i] += 1
end

e = e.max_by(2) { |k, v| v }
o = o.max_by(2) { |k, v| v }

if e[0][0] == o[0][0]
  e[1] ||= [nil, 0]
  o[1] ||= [nil, 0]
  puts e[1][1] > o[1][1] ? n - e[1][1] - o[0][1] : n - e[0][1] - o[1][1]
else
  puts n - e[0][1] - o[0][1]
end
