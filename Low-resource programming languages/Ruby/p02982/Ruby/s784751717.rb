n,d=gets.split.map(&:to_i)
x=Array.new(n).map{Array.new(d)}
n.times do |i|
    x[i]=gets.split.map(&:to_f)
end

count=0
0.upto(n-2) do |i|
    (i+1).upto(n-1) do |j|
        dist=0.0
        d.times do |k|
            dist+=(x[i][k]-x[j][k])**2
        end
        if dist**0.5==((dist**0.5).to_i)
            count+=1
        end
    end
end
puts count
