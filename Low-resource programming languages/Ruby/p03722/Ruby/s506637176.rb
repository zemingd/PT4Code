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

  def initialize
    @graph = Hash.new { |hash, key| hash[key] = [] }
  end

  def connect(i, j, d)
    @graph[i] << Edge.new(j, d)
  end

  def bellman_ford(s, v_size)
    ds = Hash.new { |hash, key| hash[key] = Float::INFINITY }
    ds[s] = 0
    @graph.each_key do |from|
      @graph[from].each do |e|
        if (ds[e.to] > ds[from] + e.cost)
          ds[e.to] = ds[from] + e.cost
        end
      end
    end
    has_neg_loop?(ds, v_size) ? nil : ds
  end

  def has_neg_loop?(ds, v_size)
    ns = Hash.new { |hash, key| hash[key] = false }
    @graph.each_key do |from|
      @graph[from].each do |e|
        if (ds[e.to] > ds[from] + e.cost)
          ds[e.to] = ds[from] + e.cost
          ns[e.to] = true
        end
      end
    end
    ns[v_size]
  end

  def inspect
    @graph.map { |key, value| [key, value] }.to_h
  end
end

n, m = gets.split.map(&:to_i)
g = DirectedGraph.new
m.times do
  a, b, c = gets.split.map(&:to_i)
  g.connect(a, b, -c)
end
ans = g.bellman_ford(1, n)
puts ans ? -ans[n] : "inf"