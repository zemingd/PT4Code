

N = gets.to_i
X = gets.to_i(2)
ans = Array.new(N,0)

p0 = 0
N.times do |i|
    p0 += 1 if X[i] == 1
end

x0_mod_pp1 = X % (p0+1)
x0_mod_pm1 = X % (p0-1)

N.times do |i|
    # xi = X
    # puts "i=#{i}"
    next if X ^ (1 << i) == 0
    pi = p0
    r = 0
    if X[i] == 1
        pi -= 1
        # mask = ~(1 << i)
        # xi = xi & mask
        r = (x0_mod_pm1 - (1 << i) % pi + pi ) % pi
        # puts "r = #{r}"
        # pi = r.to_s(2).count('1')
        ans[i] += 1
    else
        pi += 1
        # xi = xi | (1 << i)
        r = (x0_mod_pp1 + (1 << i)) % pi
        # pi = r.to_s(2).count('1')
        # puts "r = #{r}"
        ans[i] += 1
    end
    
    # r = xi
    # p r
    while r != 0 do
        # p r
        pi = r.to_s(2).count('1')
        r = r % pi
        ans[i] += 1
        # puts "r = #{r}"
        
        # r.to_s(2).length.times do |i|
        #     pi += 1 if r[i] == 1
        # end
        # p r
    end
    # puts '---'
end
puts ans.reverse