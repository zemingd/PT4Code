n, m = gets.split.map(&:to_i)
ab = n.times.map {gets.split.map(&:to_i)}.sort_by{|e| e[0]}

@heap = Array.new(n+1, 0)
@l = 0

def enque(x)
    @l += 1
    @heap[@l] = x
    i = @l
    while i > 1 && @heap[i] > @heap[i/2]
        @heap[i], @heap[i/2] = @heap[i/2], @heap[i]
        i /= 2
    end
end

def deque
    if @l == 0
        0
    elsif @l == 1
        @l = 0
        x, @heap[1] = @heap[1], 0
        x
    else
        x, @heap[1], @heap[@l] = @heap[1], @heap[@l], 0
        @l -= 1
        i = 1
        while i*2 <= @l
            j = @heap[i*2] > @heap[i*2+1] ? i*2 : i*2+1
            break if @heap[i] >= @heap[j]
            @heap[i], @heap[j] = @heap[j], @heap[i]
            i = j
        end
        x
    end
end

ans = 0
0.upto(m) do |i|
    enque(ab.shift[1]) while !ab.empty? && ab[0][0] <= i
    ans += deque
end

puts ans