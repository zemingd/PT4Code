n = gets.chomp.to_i
 a = gets.chomp.split(" ").map(&:to_i)
 b = gets.chomp.split(" ").map(&:to_i)
atr = [*1..n]
arr = []
atr.permutation (n) do |i|
    arr << i
end
ans1 = 0
ans2 = 0
arr.each_with_index do |item,i|
    ans1 = i if a == item
    ans2 = i if b == item
end
puts (ans1-ans2).abs