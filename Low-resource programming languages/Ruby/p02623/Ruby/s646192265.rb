N,M,k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c=[0]
d=[0]
a.each{|x|c << c[-1]+x}
b.each{|y|d << d[-1]+y}
ans=0
j=M
c.each_with_index do |c,i|
    break if c > k
    while d[j] > k-c
        j -= 1
    end
    ans=[ans,i+j].max
end
puts ans
