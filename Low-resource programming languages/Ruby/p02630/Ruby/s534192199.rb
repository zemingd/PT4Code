N = gets.to_i
h={}
sum=0
gets.split.map(&:to_i).each do |a|
    sum+=a
    if h.has_key?(a)
        h[a]+=1
    else
        h[a]=1
    end
end
Q = gets.to_i
Q.times do |i|
    b,c = gets.split.map(&:to_i)
    dif=c-b
    h[b]=0 unless h.has_key?(b)
    h[c]=0 unless h.has_key?(c)
    sum=sum+h[b]*dif
    h[c]+=h[b]
    h[b]=0
    puts sum
end