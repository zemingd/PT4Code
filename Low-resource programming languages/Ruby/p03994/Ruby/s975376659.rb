arr = gets.chomp.chars
K = gets.chomp.to_i
N = arr.size
count = K

class String
    def assign_integer
        ord - 'a'.ord + 1
    end

    def next_char
        assign_integer < 26 ? self.next : 'a'
    end
end

(0..K - 1).each do |i|
    if count == 0
        break
    elsif i == N - 1
        until count == 0
            arr[i] = arr[i].next_char
            count -= 1
        end
    elsif arr[i].assign_integer + count > 26
        until arr[i] == 'a'
            arr[i] = arr[i].next_char
            count -= 1
        end
    end

end

p arr.join('')