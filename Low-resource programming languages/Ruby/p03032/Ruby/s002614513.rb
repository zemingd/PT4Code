def max(a,b)
    a>b ? a:b
end
def min(a,b)
    a<b ? a:b
end
N,K=gets.split.map(&:to_i)
V=gets.split.map(&:to_i)

take_n = min(N, K)
ans=0
(0..take_n).each do |r|
    (0..(take_n-r)).each do |l|
        gems = [0]
        gems += V.first(l) + V.last(r)
        gems.sort!
        (take_n-l-r).times do
            break if gems[0] >= 0
            gems.shift
        end
        ans = max(ans, gems.inject(:+))
    end

end

p ans
