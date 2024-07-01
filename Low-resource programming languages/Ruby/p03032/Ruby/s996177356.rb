def max(a,b) a>b ? a:b end
def min(a,b) a<b ? a:b end
N,K=gets.split.map(&:to_i)
V=gets.split.map(&:to_i)
Vr=V.reverse

take_n=min(N,K)
ans=0
(0..take_n).each do |i|
    (i+1).times do |j|
        gems = [0]
        l=j
        r=i-j
        gems += V[0...l] + Vr[0...r]
        gems.sort!
        dump_n = take_n-i
        dump_n.times do
            break if gems.empty?
            break if gems[0] >= 0
            gems.shift
        end
        ans = max(ans, gems.inject(:+)) unless gems.empty?
    end

end

p ans
