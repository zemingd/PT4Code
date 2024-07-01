def make_tree(i)
  @childs[i] << i
  @tree[i][1..@n].each.with_index(1) do |x, j|
    if x == 1
      @tree[j][i] = 0
      @childs[i] += make_tree(j)
    end
  end
  @childs[i]
end

@n, @q = gets.chomp.split.map(&:to_i)

@count = Array.new(@n + 1, 0)
@childs = Array.new(@n + 1){[]}
@tree = Array.new(@n + 1){Array.new(@n + 1){0}}

(@n - 1).times do
  a, b = gets.chomp.split.map(&:to_i)
  @tree[a][b] = 1
  @tree[b][a] = 1
end

make_tree(1)

@q.times do
  pe, x = gets.chomp.split.map(&:to_i)
  @childs[pe].each do |i|
    @count[i] += x
  end
end

puts @count[1..@n] * ' '