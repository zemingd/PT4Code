$N, $A, $B, $C = gets.split.map(&:to_i)

l=[]
$N.times do |i|
  l[i] = gets.to_i
end

def dfs(depth,a,b,c)
  if depth == $N
    if a !=0 && b!=0 && c!=0
      ($A-a).abs + ($B-b).abs + ($C-c).abs
    else
      Float::INFINITY
    end
  else
    return [
      dfs(depth+1,a,b,c),
      dfs(depth+1,a+l[depth],b,c) + 10,
      dfs(depth+1,a, b+l[depth],c) + 10,
      dfs(depth+1,a,b,c+l[depth]) + 10
    ].min
  end
end

puts dfs(0,0,0,0)
