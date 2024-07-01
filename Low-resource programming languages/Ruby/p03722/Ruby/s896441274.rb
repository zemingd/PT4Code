def bellmanford(n,edge)
  (n-1).times do
    edge.each do |i,j,k|
      if $score[i-1]+k > $score[j-1]
        $score[j-1] = $score[i-1]+k
      end
    end
  end
  return $score[-1]
end
n,m = gets.chomp.split(" ").map(&:to_i)
edge = m.times.map{gets.chomp.split(" ").map(&:to_i)}
$score = Array.new(n,-10**12)
$score[0] = 0
ans = bellmanford(n,edge)
if ans != bellmanford(n,edge)
  puts "inf"
else
  puts ans
end