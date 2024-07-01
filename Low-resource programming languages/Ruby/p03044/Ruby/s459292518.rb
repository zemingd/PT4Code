N = gets.to_i

@tree = Array.new(N+1){Array.new(N+1, 0)}
@color = Array.new(N+1, 2)
(N-1).times do
  a, b, c = gets.split(' ').map(&:to_i)
  @tree[a][b] = c
  @tree[b][a] = c
end

@color[1] = 0
def paint(prev, now)
  @color[now] = 0 if prev == 0
  @color[now] = (@color[prev]+@tree[prev][now])%2 if prev != 0
  nxts = (1..N).select{|i| @tree[now][i] > 0 && @color[i] == 2}
  nxts.each do |nxt|
    paint(now, nxt)
  end
end
paint(0, 1)
  
puts @color[1..N]