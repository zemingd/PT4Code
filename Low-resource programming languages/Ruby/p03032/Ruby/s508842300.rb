def max(a,b) a>b ? a:b end
def min(a,b) a<b ? a:b end
N,K=gets.split.map(&:to_i)
V=gets.split.map(&:to_i)

take_n = min(N, K)
ans=0
(0..take_n).each do |i|
    (i+1).times do |j|
        gems = [0]
        l, r = j, i-j
        gems += V.first(l) + V.last(r)
        gems.sort!
        (take_n-i).times do
            break if gems[0] >= 0
            gems.shift
        end
        ans = max(ans, gems.inject(0,:+))
    end

end

p ans
