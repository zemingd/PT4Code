n,k = gets.split.map(&:to_i)
len = gets.chomp.split.map(&:to_i)
max = len[0]
index = 0
ans = 0
k.times do |i|
    n.times do |j|
        if max<len[j]
            max=len[j]
            index=j
        end
    end
    ans+=max
    len[index]=0
    max=len[0]
end
puts ans