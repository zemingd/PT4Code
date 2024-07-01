a, b = gets.split.map(&:to_i)
ans = []
A = []
a.times do A << "#{b}" end
ans << A.join
B = []
b.times do B << "#{a}" end
ans << B.join
puts ans.sort[0]
