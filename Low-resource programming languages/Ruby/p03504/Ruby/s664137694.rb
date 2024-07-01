N,C=gets.chomp.split.map(&:to_i)
M = 100001
s = []
t = []
c = []
N.times do
    ss,tt,cc = gets.chomp.split.map(&:to_i)    
    s << ss
    t << tt
    c << cc
end

u = Array.new(M)
z = Array.new(M,0)
ans = 0
1.upto(C) do |i|
    0.upto(M-1) {|j| u[j] = 0}
    0.upto(N-1) do |j|
        if c[j] == i
            u[s[j]*2 - 1] += 1
            u[t[j]*2 + 1] -= 1
        end
    end
    1.upto(M-1) do |j|
         u[j] += u[j-1]
         if u[j] > 0
            z[j] += 1
         end
    end
end

puts z.max
