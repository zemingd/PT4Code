N = gets.to_i
S = gets.chomp

def same(a, b)
    return ('a'..'z')
        .map {|i| a.include?(i) && b.include?(i) ? 1 : 0}
        .inject(:+)
end

puts (1..N-1).map {|i| same(S[0,i], S[i,N])}.max