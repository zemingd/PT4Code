n, m = gets.chomp.split.map(&:to_i)

heap = Array.new(n + 1, 0)

def add_heap(heap, e, i)
    # puts "add_heap #{e} #{i}"
    # p heap
    if i == 0
        # puts "ERROR"
        return
    end
    if i == 1
        heap[i] = e
        return
    end

    parent_index = i / 2
    # puts "parent: #{parent_index} => #{heap[parent_index]}"

    if heap[parent_index] < e
        heap[i] = heap[parent_index]
        heap[parent_index] = e
        add_heap(heap, e, parent_index)
    else
        heap[i] = e
    end    
    # puts "add #{heap}"
end

def down_heap(heap, i, n)
    # puts "#{i} / #{n}"
    if i >= n
        return
    end
    current = heap[i]
    if i * 2 <= n && heap[i * 2] > heap[i]
      heap[i] = heap[i * 2]
      heap[i * 2] = current
      down_heap(heap, i * 2, n)
    elsif i * 2 + 1 <= n && heap[i * 2 + 1] > heap[i]
        heap[i] = heap[i * 2 + 1]
        heap[i * 2 + 1] = current
        down_heap(heap, i * 2 + 1, n)      
    end
end

def update_heap(heap, n)
    # puts "update"
    heap[1] /= 2

    down_heap(heap, 1, n)
    # puts "updated #{heap}"
end

gets.chomp.split.map(&:to_i).each_with_index do |a, i|
    add_heap(heap, a, i + 1)
end


m.times do |t|
    update_heap(heap, n)
end

# p heap

puts heap.inject(:+)
