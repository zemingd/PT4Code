class DirectedGraph
  class Edge
    attr_accessor :to, :cost

    def initialize(to, cost)
      @to, @cost = to, cost
    end

    def inspect
      [@to, @cost]
    end
  end

  def initialize(v_size)
    @graph = Hash.new { |hash, key| hash[key] = [] }
    @v_size = v_size
  end

  def connect(i, j, d)
    @graph[i] << Edge.new(j, d)
  end

  def bellman_ford(s)
    ds = Hash.new { |hash, key| hash[key] = -Float::INFINITY }
    ds[s] = 0
    for i in 0...@v_size
      is_updated = false
      @graph.each_key do |from|
        @graph[from].each do |e|
          if (ds[e.to] < ds[from] + e.cost)
            ds[e.to] = ds[from] + e.cost
            return nil if i == @v_size - 1
            is_updated = true
          end
        end
      end
      break unless is_updated
    end
    ds
  end

  def inspect
    @graph.map { |key, value| [key, value] }.to_h
  end
end

n, m = gets.split.map(&:to_i)
g = DirectedGraph.new(n)
m.times do
  a, b, c = gets.split.map(&:to_i)
  g.connect(a, b, c)
end
ans = g.bellman_ford(1)
puts ans ? ans[n] : "inf"