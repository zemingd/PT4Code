N=gets.to_i
edge=Array.new(N+1){Array.new}
(N-1).times do
    a,b,e=gets.split.map(&:to_i)
    edge[a] << [b,e]
    edge[b] << [a,e]
end
dist=Array.new(N+1)
checked=Array.new(N+1,false)
dist[1]=0
queue=[1]
until queue.empty?
    pres=queue.shift
    next if checked[pres]
    checked[pres]=true
    edge[pres].each do |v,d|
        if !dist[v]
            dist[v]=dist[pres]+d
            queue << v
        end
    end
end
dist[1..-1].each{|e|puts e.odd? ? 1 : 0} 
