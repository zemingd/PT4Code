N, M = gets.split(" ").map(&:to_i)
a = Array.new(M) {gets.to_i}
fivo = [0, 1]
skip = a.shift

1.upto(N) do |i|
    if i == skip
        fivo << 0 
        skip = a.shift
        next
    end
    fivo << (fivo[i] + fivo[i - 1]) % (10**9 + 7)
end 

puts fivo[-1]