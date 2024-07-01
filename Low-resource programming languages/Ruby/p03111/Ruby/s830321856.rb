def dfs(cur, a, b, c)
  if cur == $n
    if [a, b, c].min > 0
      return (a-$a).abs + (b-$b).abs + (c-$c).abs - 30
    else
      return 9999999
    end
  end
  return [dfs(cur+1, a, b, c), dfs(cur+1, a+$l[cur], b, c)+10, dfs(cur+1, a, b+$l[cur], c)+10, dfs(cur+1, a, b, c+$l[cur])+10].min  
end

$n, $a, $b, $c = gets.chomp.split.map(&:to_i)
$l = []
$n.times do |i|
  $l[i] = gets.to_i
end
puts dfs(0, 0, 0, 0)