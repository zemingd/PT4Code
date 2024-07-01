N = gets.to_i
V = gets.split.map(&:to_i)

ls = V.partition.with_index {|v,i| i.even? }
a,b = ls.map.with_index {|v,i| v.group_by(&:itself).map {|k,v| [v.size, k] }.sort }

if a[-1][1] != b[-1][1]
  ans = N - a[-1][0] - b[-1][0]
elsif a[-2] == nil && b[-2] == nil
  ans = N - [a[-1][0], b[-1][0]].max
else
  ans = N - [a[-1][0] + (b[-2][0]||0), a[-2][0] + (b[-1][0]||0)].max
end
puts ans
