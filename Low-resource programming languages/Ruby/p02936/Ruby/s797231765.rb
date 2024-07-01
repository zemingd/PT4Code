n, q = gets.chomp.split(' ').map(&:to_i)
ab = (1..(n - 1)).map { gets.chomp.split(' ').map(&:to_i) }
px = (1..q).map { gets.chomp.split(' ').map(&:to_i) }

@tree = Array.new(n) { [] }
@answer = Array.new(n, 0)
@is_added = Array.new(n, false)

ab.each do |a, b|
  @tree[a - 1] << b - 1
  @tree[b - 1] << a - 1
end
px.each { |p, x| @answer[p - 1] += x }

queue = [0]

until queue.empty?
  p = queue.shift
  @is_added[p] = true
  @tree[p].each do |i|
    next if @is_added[i]
    @answer[i] += @answer[p]
    @is_added[i] = true
    queue << i
  end
end

puts @answer.join(' ')
