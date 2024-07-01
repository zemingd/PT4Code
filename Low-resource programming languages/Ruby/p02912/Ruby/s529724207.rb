class PriorityQueue
	def initialize(arr = [])
		@nodes = [nil]
		arr.each do |a|
			 insert(a)
		end
	end

	def front()
		return @nodes.size > 1 ? @nodes[1] : nil
	end

	def insert(node)
		if size == 0 then
			@nodes.push(node)
			return
		end

		@nodes.push(node)
		child = size
		parent = getParent(child)
		# 親の要素が存在する限りスワップ
		while (parent >= 1) && (@nodes[parent] > @nodes[child]) 
			swap(parent, child)
			child = parent
			parent = getParent(child)
		end
	end

	def insertArr(arr)
		arr.each do |a|
			insert(a)
		end
	end

	def pop()
		# ヒープが空
		return nil if empty?
		# 要素が1つ
		return @nodes.pop if size == 1

		minval = @nodes[1]
		# 最後の要素を先頭に
		@nodes[1] = @nodes.pop

		# 先頭を下に動かす
		parent = 1
		child = getSmallChild(parent)
		while (child <= size) && (@nodes[child] < @nodes[parent]) 
			swap(parent, child)
			parent = child
			child = getSmallChild(parent)
		end
		return minval
	end

	def swap(u, v)
		@nodes[u], @nodes[v] = @nodes[v], @nodes[u]
	end

	def getParent(childNode)
		return (childNode / 2).to_i
	end

	def getSmallChild(parent)
		left = parent * 2
		right = parent * 2 + 1
		# 両方なければsize
		# 右がなければ左
		# 両方あれば小さい方
		if left >= size
			return size
		elsif right == size
			return left
		else
			return @nodes[left] <= @nodes[right] ? left: right
		end
	end

	def size()
		@nodes.size - 1
	end

	def empty?()
		@nodes.size == 1
	end

	def show()
		if empty?
			puts "empty!"
			return
		end
		(1..size).each do |i|
			puts "#{i} #{@nodes[i]}"
		end
	end
end

pp = PriorityQueue.new()

n, m = gets.chomp.split(" ").map(&:to_i)
arr = gets.chomp.split(" ").map{|a| a.to_i * -1}
arr.each do |a|
	pp.insert(a)
end
m.times do |i|
	pp.insert((pp.pop / 2.0).ceil)
end
sum = 0;
pp.size.times do |i|
	sum += pp.pop
end
puts sum.abs

