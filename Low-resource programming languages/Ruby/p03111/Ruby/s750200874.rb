@n,@a,@b,@c = gets.chomp.split.map(&:to_i)
@l = []

@n.times do |i|
  @l << gets.chomp.to_i
end

def dfs(i, a, b, c, cost)
  if i == @n
    return 10**10 if a * b * c == 0

    # 最世の1つ目でもコスト10かかってしまってるので30を引く
    return (@a-a).abs + (@b-b).abs + (@c-c).abs + cost - 30
  end

  x = dfs(i+1, a, b, c, cost)
  y = dfs(i+1, a+@l[i], b, c, cost+10 )
  z = dfs(i+1, a, b+@l[i], c, cost+10 )
  w = dfs(i+1, a, b, c+@l[i], cost+10 )

  return [x,y,z,w].min
end

puts dfs(0,0,0,0,0)

