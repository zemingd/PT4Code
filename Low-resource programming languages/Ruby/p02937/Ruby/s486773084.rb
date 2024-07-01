s = gets.chomp
t = gets.chomp

len = s.length

i = 0
hash = {}
s.chars { |ch|
    if hash.key?(ch)
        hash[ch].push(i)
    else
        hash[ch] = [i]
    end
    i += 1
}

i = 0
t.chars { |ch|
    if hash.key?(ch)
        list = hash[ch]
        pos = i%len
        if list[-1] <= pos
            i += len+list[0] - pos
        else
            j = 0
            head = 0
            tail = list.size-1
            mid = (head+tail)/2
            while head < tail
                if list[mid] <= pos
                    head = mid + 1
                else
                    tail = mid
                end
                mid = (head+tail)/2
            end
            i += list[mid] - pos
        end
    else
        i = -2
        break
    end
}

p i+1