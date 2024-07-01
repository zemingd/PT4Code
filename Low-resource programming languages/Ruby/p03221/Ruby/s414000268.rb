n,m = gets.split.map(&:to_i)
a = []
ans = []
m.times do |i|
    p,y = gets.split.map(&:to_i)
    a << [p,y,i]
end
a = a.sort_by{|i,j,k|j}
b = Hash.new(0)
a.each do |i,j,k|
    b[i] += 1
    ans << [("00000"+i.to_s)[-6..-1]+("00000"+b[i].to_s)[-6..-1],k]
end
ans.sort_by{|i,j|j}.each{|i,j|puts i}