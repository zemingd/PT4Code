n, m = gets.split.map(&:to_i)
@ab = n.times.map {gets.split.map(&:to_i)}
@ab.sort_by!{|e| e[1]}.sort_by!{|e| e[0]}
@ab.unshift([0, 0])

x = 1 << (n - 1).bit_length
@t = Array.new(x << 1, 0)

n.times {|i| @t[x + i] = i + 1}
(x - 1).downto(1) do |i|
    @t[i] = @ab[@t[2*i]][1] > @ab[@t[2*i+1]][1] ? @t[2*i] : @t[2*i+1]
end

def max(i, s, t, l, r)
    if t < l || s > r
        0
    elsif s >= l && t <= r
        @t[i]
    else
        m = (s + t) / 2
        x = max(2*i, s, m, l, r)
        y = max(2*i+1, m+1, t, l, r)
        @ab[x][1] > @ab[y][1] ? x : y
    end
end

ans = 0
i = 0
0.upto(m) do |j|
    i += 1 while i < n && @ab[i][0] <= j
    i -= 1

    next if i == 0
    z = max(1, 1, n, 1, i)
    next if z == 0

    ans += @ab[z][1]
    z += x - 1
    @t[z] = 0
    z /= 2
    while z != 0
        @t[z] = @ab[@t[2*i]][1] > @ab[@t[2*i+1]][1] ? @t[2*i] : @t[2*i+1]
        z /= 2
    end
end

puts ans