class PriorityQueue
    def initialize
        @queue = []
        @size = 0
    end

    def push(element)
        @size += 1
        last_index = @size - 1
        @queue[last_index] = element
        up_heap(last_index)
    end

    def pop
        return if @size == 0
        max = @queue[0]
        last_index = @size - 1
        @queue[0] = @queue[last_index]
        @queue[last_index] = nil
        @size -= 1
        down_heap(0)
        max
    end

    def sum
        @queue.take(@size).inject(:+)
    end

    def print
        p @queue
    end

    private

    def up_heap(index)
        return if index == 0

        parent_index = (index - 1) / 2
        if @queue[parent_index] < @queue[index]
            swap(index, parent_index)
            up_heap(parent_index)
        end
    end

    def down_heap(index)
        return if is_leaf(index)

        target_index = if l_leaf(index).nil?
            r_leaf_index(index)
        elsif r_leaf(index).nil?
            l_leaf_index(index)
        else
            l_leaf(index) > r_leaf(index) ? l_leaf_index(index) : r_leaf_index(index)
        end

        if @queue[target_index] > @queue[index]
            swap(target_index, index)
            down_heap(target_index)
        end
    end

    def is_leaf(index)
        l_leaf(index).nil? && r_leaf(index).nil?
    end

    def l_leaf_index(index)
        2 * index + 1
    end

    def r_leaf_index(index)
        2 * (index + 1)
    end

    def l_leaf(index)
        @queue[l_leaf_index(index)]
    end

    def r_leaf(index)
        @queue[r_leaf_index(index)]
    end

    def swap(index_a, index_b)
        tmp = @queue[index_a]
        @queue[index_a] = @queue[index_b]
        @queue[index_b] = tmp
    end
end

q = PriorityQueue.new

n, m = gets.chomp.split.map(&:to_i)
gets.chomp.split.map(&:to_i).each do |a|
    q.push(a)
end

m.times do |t|
    max = q.pop
    q.push(max / 2)
end

puts q.sum
