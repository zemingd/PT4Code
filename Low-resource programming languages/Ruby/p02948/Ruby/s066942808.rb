n, m = gets.split.map!(&:to_i)

ab = Hash.new{|hash,key| hash[key] = []}
n.times do 
    a,b = gets.split.map(&:to_i)
    ab[a] << b
end
ab = ab.to_a.sort!{|x,y| x[0] <=> y[0]} << [m+1,[0]]

ans = 0
queue = Array.new
(1..m).each do |day|
    while ab[0][0] <= day do
        queue.concat(ab.shift[1])
    end
    if queue != [] then
        ans += queue.delete_at(queue.find_index(queue.max))
    end
    #p [day,ans,queue]
    #p ab
end

puts ans