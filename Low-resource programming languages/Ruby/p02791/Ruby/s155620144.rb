N=gets.to_i
a=gets.split.map(&:to_i)
res=0
cnt=Float::INFINITY
N.times do |i|
    if cnt>a[i]
        res+=1
        cnt=a[i]
    end
end
puts res
  
