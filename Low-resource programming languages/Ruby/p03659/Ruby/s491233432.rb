N = gets.to_i
a_array = gets.split.map(&:to_i).sort!

(N-2).times{ |i|
    a_i   = a_array.shift
    a_ip1 = a_array.shift
    
    insert_val = a_i + a_ip1
    insert_idx = 0

    a_array.each_index{ |i|
        if a_array[i] >= insert_val then
            insert_idx = i
            break
        elsif
            insert_idx = i + 1
        end
    }

    a_array.insert(insert_idx, insert_val)
    # p "#{insert_idx}: #{a_array}"
}

puts (a_array[1] - a_array[0])
