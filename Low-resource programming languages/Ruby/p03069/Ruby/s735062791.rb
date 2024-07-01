N = gets.to_i
S = gets.chomp

cnt = 0

S << '#'
N.times {|i|
    if S[i] == '#' && S[i+1] == '.'
        cnt = cnt+1
    end
}

puts cnt