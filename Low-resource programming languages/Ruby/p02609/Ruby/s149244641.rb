N = gets.to_i
X = gets.to_i(2)
ans = Array.new(N,0)

p0 = 0
N.times do |i|
    p0 += 1 if X[i] == 1
end

N.times do |i|
    xi = X
    pi = p0
    if xi[i] == 1
        # p xi
        pi -= 1
        mask = ~(1 << i)
        # p mask.to_s(2)
        xi = xi & mask
        # p xi
    else
        # p xi
        pi += 1
        xi = xi | (1 << i)
        # p xi
    end
    
    r = xi
    while r != 0 do
        # p r
        r = r % pi
        ans[i] += 1
        pi = 0
        r.to_s(2).chars.each do |c|
            pi += 1 if c == '1'
        end
    end
    # puts '---'
end
puts ans.reverse