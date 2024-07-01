a,b=gets.split.map(&:to_i)
ans=-1
(1..1000).each do |i|
    c=(i*0.08).floor
    d=(i*0.1).floor
    if a==c and b==d
        ans=i
        break
    end
end

p ans