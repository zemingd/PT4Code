N=gets.to_i
s=gets.chomp

def popcount(v)
    v = v - ((v >> 1) & 0x55555555)
    v = (v & 0x33333333) + ((v >> 2) & 0x33333333)
    ((v + (v >> 4) & 0xF0F0F0F) * 0x1010101) >> 24
end

pcount_base = s.count('1')
arr = Array.new(pcount_base,0)
1.upto(pcount_base) do |i|
    arr[i] = 1 + arr[i%popcount(i)]
end

1.upto(N) do |i|
    pcount = pcount_base + (s[i-1] == '1' ? -1 : 1)
    if pcount == 0
        puts 0
    else
        t = s[i-1]
        s[i-1] = (s[i-1] == '1' ? '0' : '1')
        puts 1+arr[s.to_i(2)%pcount]
        s[i-1] = t
    end
end

# 1.upto(128) do |i|
#     p [i, i.to_s(2), popcount(i), i % popcount(i)] if popcount(i) == 5
# end