N = gets.to_i

@oddtree = Array.new(N+1){Array.new}
@eventree = Array.new(N+1){Array.new}
@color = Array.new(N+1, 2)
(N-1).times do
  a, b, c = gets.split(' ').map(&:to_i)
  if c%2 == 0
    @eventree[a].push(b)
    @eventree[b].push(a)
  else
    @oddtree[a].push(b)
    @oddtree[b].push(a)
  end
end

@color[1] = 0
def paint(prev, now, eo)
  if prev == 0
    @color[now] = 0
  else
  	@color[now] = @color[prev] if eo == 0
    @color[now] = (@color[prev]+1)%2 if eo == 1
  end
  evennxts = @eventree[now].select{|i| @color[i] == 2}
  oddnxts = @oddtree[now].select{|i| @color[i] == 2}
  evennxts.each do |nxt|
    paint(now, nxt, 0)
  end
  oddnxts.each do |nxt|
    paint(now, nxt, 1)
  end
end
paint(0, 1, 0)
  
puts @color[1..N]