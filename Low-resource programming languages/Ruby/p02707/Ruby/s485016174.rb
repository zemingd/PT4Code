N = gets.to_i
A = gets.split.map {|item| item.to_i}
a1 = A.sort.slice_when(&:!=).map {|x| [x.first, x.size] }
a2 = [*1..N].map {|item| [item, 0]}.to_h
ans = a2.merge(Hash[a1])
puts ans.values
