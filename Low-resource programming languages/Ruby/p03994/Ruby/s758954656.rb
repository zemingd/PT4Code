arr = gets.chomp.chars
K = gets.chomp.to_i
N = arr.size
count = K

class String
    # a..z → 0..25
    def assign_integer
        ord - 'a'.ord
    end

    # 引数分だけアルファベットを進める
    def change_char(num)
        ((assign_integer + num) % 26).assign_alphabet
    end
end

class Integer
    # 0..25 → a..z
    def assign_alphabet
        (self + 'a'.ord).chr
    end
end

(0..K - 1).each do |i|
    if count == 0
        break
    elsif i == N - 1
        arr[i] = arr[i].change_char(count)
        break
    elsif arr[i] == 'a'
        next
    elsif arr[i].assign_integer + count > 25
        int = arr[i].assign_integer
        arr[i] = arr[i].change_char(26 - int)
        count = count - 26 + int
    end
end

puts arr.join('')
