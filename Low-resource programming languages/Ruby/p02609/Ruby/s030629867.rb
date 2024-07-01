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
N.downto(1) do |i|
    if X[i-1] == 1
        if pcount_base == 1
            puts 0
        else
            pcount = pcount_base - 1
            xb ||= X % pcount
            x = xb - ((1<<(i-1)) % pcount)
            puts 1+arr[x%pcount]
        end
    else
        pcount = pcount_base + 1
        xa ||= X % pcount
        x = xa + ((1<<(i-1)) % pcount)
        puts 1+arr[x%pcount]
    end
end