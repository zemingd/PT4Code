class PQueue
    def initialize(array=[])
        @heap=Array.new
        @size=0
        if !array.empty?
            array.each do |value|
                self.push(value)
            end
        end
    end

    def push(value)
        node=@size
        @size+=1
        while node>0
            parent=(node-1)/2
            break if @heap[parent]>=value
            @heap[node]=@heap[parent]
            node=parent
        end
        @heap[node]=value
    end

    def top
        return @heap[0]
    end

    def pop
        res=@heap[0]
        @size-=1
        value=@heap[@size]
        node=0
        while (node*2+1<@size)
            parent=node*2+1
            parent+=1 if parent+1<@size && @heap[parent+1] > @heap[parent]
            break if @heap[node]<=value
            @heap[node]=@heap[parent]
            node=parent
        end
        @heap[node]=value
        return res
    end

    def to_a
        return @heap
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