N = gets.to_i
S = gets.chomp

right = [0]*N
left = [0]*N
list = []
N.times{|i|
    next if i == 0
    if S[i-1] == 'W'
        right[i] = right[i-1] + 1
    else
        right[i] = right[i-1]
    end
}
N.downto(1){|i|
    next if i == N
    if S[i] == 'E'
        left[i-1] = left[i] + 1
    else
        left[i-1] = left[i]
    end
}
N.times{|i|
    list[i] = right[i] + left[i]
}

puts list.min
