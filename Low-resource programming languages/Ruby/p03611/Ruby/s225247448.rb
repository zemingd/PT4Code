n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
plus = a.map{|e| e+1}
minus = a.map{|e| e-1}
arr = a + plus + minus
list = Hash.new(0)
arr.each do |e|
    list[e] += 1
end
x = list.max{|x, y| x[1] <=> y[1]}
ans = 0
a.each do |e|
    tmp = nil
    if e < x[0]
        tmp = e + 1
    elsif e > x[0]
        tmp = e - 1
    else
        tmp = e
    end
    ans += 1 if tmp == x[0]
end
puts ans