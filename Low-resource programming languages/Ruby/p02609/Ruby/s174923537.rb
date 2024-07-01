N=gets.to_i
S=gets.chomp
X=S.to_i(2)


def popcount(v)
    v = v - ((v >> 1) & 0x55555555)
    v = (v & 0x33333333) + ((v >> 2) & 0x33333333)
    ((v + (v >> 4) & 0xF0F0F0F) * 0x1010101) >> 24
end

max = 2*10**5
arr = Array.new(max+1,0)
1.upto(max) do |i|
    arr[i] = 1 + arr[i%popcount(i)]
end

pcount_base = S.count('1')
xa = X % (pcount_base+1)
xb = X % [(pcount_base-1),1].max
1.upto(N) do |i|
    pcount = pcount_base + (S[i-1] == '1' ? -1 : 1)
    if pcount == 0
        puts 0
    elsif S[i-1] == '1'
        x = xb - ((2**(N-i)) % pcount)
        puts 1+arr[x%pcount]
    else
        x = xa + ((2**(N-i)) % pcount)
        puts 1+arr[x%pcount]
    end
end