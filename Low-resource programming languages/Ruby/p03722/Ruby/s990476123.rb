n,m = gets.split.map(&:to_i)
a,b,c = 3.times.map{Array.new(m)}
m.times do |i|
    a[i],b[i],c[i] = gets.split.map(&:to_i)
end
$score = Array.new(n+1,-10**15)
$score[1] = 0

def bellmanford(a,b,c,n,m)
    n.times do
        m.times do |i|
            $score[b[i]] = $score[a[i]]+c[i] if $score[b[i]] < $score[a[i]]+c[i]
        end
    end
end

bellmanford(a,b,c,n,m)
ans = $score[n]
bellmanford(a,b,c,n,m)
if ans == $score[n]
    puts ans
else
    puts "inf"
end