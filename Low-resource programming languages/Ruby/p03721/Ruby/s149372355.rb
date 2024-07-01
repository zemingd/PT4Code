n,k = gets.split.map(&:to_i)
h={}
n.times do
    a,b = gets.split.map(&:to_i)
    if h.has_key?(a)
        h[a]+=b
    else
        h[a]=b
    end
end
i=0
h.sort.each do |key,v|
    if k.between?(i,i+v)
        puts key
        break
    else
        i+=v
    end
end