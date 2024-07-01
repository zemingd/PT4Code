class Heap
    attr_reader :size
    def initialize
        @heap = []
        @size = 0
    end

    def length
        @size
    end

    def push(x)
        i = @size
        @size += 1
        while i > 0
            p = (i-1)/2
            break if @heap[p] <= x
            @heap[i] = @heap[p]
            i = p
        end
        @heap[i] = x
    end

    def pop
        return nil if @size == 0
        ret = @heap[0]
        @size -= 1
        x = @heap[@size]
        i = 0
        while i*2+1 < @size
            a = i*2+1
            b = a+1
            if b < @size && @heap[b] < @heap[a]
                a = b
            end
            break if @heap[a] >= x
            @heap[i] = @heap[a]
            i = a
        end
        @heap[i] = x
        @heap.pop
        return ret
    end
end

class Array
    include Comparable
end

X, Y, Z, K = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort.reverse + [-10**18]
bs = gets.split.map(&:to_i).sort.reverse + [-10**18]
cs = gets.split.map(&:to_i).sort.reverse + [-10**18]

heap = Heap.new
heap.push([-(as[0]+bs[0]+cs[0]), 0, 0, 0])
used = {[0, 0, 0] => true}
K.times do
    ans, i, j, k = heap.pop
    puts -ans
    [[i+1, j, k], [i, j+1, k], [i, j, k+1]].each do |ijk|
        unless used[ijk]
            used[ijk] = true
            val = as[ijk[0]] + bs[ijk[1]] + cs[ijk[2]]
            heap.push([-val] + ijk)
        end
    end
end