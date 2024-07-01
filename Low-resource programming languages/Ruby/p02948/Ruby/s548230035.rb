def merge (x,y)
    if x.empty? then
        y
    else
        i = 0
        while e = y.shift do
            while x[i] < e do
                i += 1
            end
            x[i,0] = e 
            i += 1

            if i == x.length then 
                x.concat(y)
                break
            end
        end
        x
    end
end

n, m = gets.split.map!(&:to_i)

ab = Hash.new
n.times do 
    a,b = gets.split.map(&:to_i)
    if ab[a] then
        ab[a] << b
    else
        ab[a] = [b]
    end
end
ab = ab.to_a.sort!{|x,y| x[0] <=> y[0]} << [m+1,[0]]

ans = 0
queue = Array.new
(1..m).each do |day|
    while ab[0][0] <= day do
        queue = merge(queue,ab.shift[1].sort!)
    end
    if queue != [] then
        ans += queue.pop 
    end
    p [day,ans,queue]
    p ab
end

puts ans