a,b,c,d = gets.split.map(&:to_i)
arry = Array.new(101,0)
arry[a] = 1
arry[b] = -1
arry[c] = 1
arry[d] = -1
(0 .. 100).inject(0) do |s,i|
    arry[i] = s + arry[i]
end
puts arry.count(2)