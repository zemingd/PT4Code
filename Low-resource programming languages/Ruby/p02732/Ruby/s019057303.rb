N = gets.to_i
A = gets.split.map(&:to_i)
G = A.group_by(&:itself)
G.each_value {|v| G[v[0]] = v.size }

S = {}
G.each do |k,v|
  S[v] ||= (v*(v-1))/2
  v -= 1
  S[v] ||= (v*(v-1))/2 if v > 1
end

A.each do |a|
  puts G.inject(0) {|r,(k,v)| r + (S[k==a ? v-1 : v]||0) }
end
