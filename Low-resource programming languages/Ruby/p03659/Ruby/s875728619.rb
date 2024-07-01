N = gets.to_i
a_array = gets.split.map(&:to_i).sort!

def calc_ideal_size(size)
    ideal_size = 2

    loop {
        memo = ideal_size ** 2
        break if memo > size
        ideal_size = memo
    }

    return ideal_size
end

def merge(recv_arr)   
    ret_arr = Array.new

    while recv_arr != [] do
        head = recv_arr.shift
        tail = recv_arr.pop
        ret_arr << head + tail
    end

    return ret_arr
end

rest_arr = a_array.pop(N - 2 * (N - calc_ideal_size(N)))
a_array = merge(a_array) + rest_arr

while a_array.size != 2 do
    a_array = merge(a_array)
end

puts (a_array[1] - a_array[0]).abs
