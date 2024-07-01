n,m=gets.split.map(&:to_i)
k=Array.new(n,[])
n.times do |i|
    k[i]=gets.split.map(&:to_i)
end

food=Array.new(m,0)
n.times do |i|
    k[i][0].times do |j|
        food[k[i][j+1]-1]+=1
    end
end
puts food.count(n)
