n,k = gets.split.map(&:to_i)
len = gets.chomp.split.map(&:to_i)
len2 = len.sort.reverse
ans = 0
k.times do |i|
    ans+=len2[i]
end
puts ans