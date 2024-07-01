n,m=gets.split.map(&:to_i)
k=m.times.map{gets.split.map(&:to_i)}
p=gets.split.map(&:to_i)

ans=0
[0,1].repeated_permutation(n).to_a.each do |bit|
    check=true
    m.times do |i|
        count=0
        k[i][0].times do |j|
            count+=bit[k[i][j+1]-1]
        end
        check=false and break if count%2!=p[i]
    end
    if check
        ans+=1
    end
end
puts ans
