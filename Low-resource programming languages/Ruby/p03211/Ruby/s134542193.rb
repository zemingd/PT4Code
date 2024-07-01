ary = gets.chomp
ans = 10000 
(ary.length-2).times do |i|
    num = ary[i, 3].to_i
    ans = [ans, (num-753).abs].min
end
p ans 