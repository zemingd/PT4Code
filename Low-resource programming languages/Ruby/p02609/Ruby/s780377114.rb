N=gets.to_i
S=gets.chomp
X=S.to_i(2)

def popcount(v)
    v = v - ((v >> 1) & 0x55555555)
    v = (v & 0x33333333) + ((v >> 2) & 0x33333333)
    ((v + (v >> 4) & 0xF0F0F0F) * 0x1010101) >> 24
end

pcount_base = S.count('1')
arr = Array.new(pcount_base,0)
1.upto(pcount_base) do |i|
    arr[i] = 1 + arr[i%popcount(i)]
end

1.upto(N) do |i|
    pcount = pcount_base + (S[i-1] == '1' ? -1 : 1)
    x = X ^ (1<<(N-i))
    puts 1+arr[x%pcount]
end

# 1.upto(128) do |i|
#     p [i, i.to_s(2), popcount(i), i % popcount(i)] if popcount(i) == 5
# end