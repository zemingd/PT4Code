class PQueue
    def initialize(array=[])
        @heap=Array.new
        if !array.empty?
            array.each do |value|
                self.push(value)
            end
        end
    end

    def push(value)
        node=@heap.size
        while node>0
            parent=(node-1)/2
            break if @heap[parent]>=value
            @heap[node]=@heap[parent]
            node=parent
        end
        @heap[node]=value
    end

    def top
        return @heap.first
    end

    def pop
        res=@heap[0]
        value=@heap.pop
        node=0
        while (node*2+1<@heap.size)
            parent=node*2+1
            parent+=1 if parent+1<@heap.size && @heap[parent+1] > @heap[parent]
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
end



N,M=gets.split.map(&:to_i)
a=gets.split.map(&:to_i)
pq=PQueue.new(a)
M.times do
    e=pq.pop/2
    pq.push(e)
end
puts pq.to_a.inject(&:+)