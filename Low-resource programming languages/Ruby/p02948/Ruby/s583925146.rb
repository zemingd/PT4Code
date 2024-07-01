class PQueue
    def initialize()
        @heap=Array.new()
        @size=0
    end

    def push(value)
        @heap[@size]=value
        node=@size
        @size+=1
        while 0<=(node-1)/2
            break if @heap[(node-1)/2] >= @heap[node]
            @heap[node]=@heap[(node-1)/2]
            node=(node-1)/2 
        end
        @heap[node]=value
    end

    def pop()
        res=@heap[0]
        @size-=1
        value=@heap[@size]
        node=0
        while node*2+1 < @size
            child=node*2+1
            child+=1 if child+1 < @size && @heap[child+1]>@heap[child]
            break if @heap[child]>=@heap[node]
            @heap[node]=@heap[child]
            node=child
        end
        @heap[node]=value
        return res
    end

    def empty?
        return @size==0
    end
    
end

N,M=gets.split.map(&:to_i)
list=Hash.new()
N.times do |i|
    a,b=gets.split.map(&:to_i)
    list[a] ||= Array.new
    list[a].push(b)
end
que=PQueue.new()
res=0
1.upto(M) do |i|
    list[i]||=Array.new
    list[i].each do |e|
        que.push(e)
    end
    res+=que.pop if !que.empty?
end
puts res