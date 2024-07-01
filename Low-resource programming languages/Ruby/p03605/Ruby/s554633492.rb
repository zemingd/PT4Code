class Atcoder
  MAX_N = 8

  def initialize
    _n, m, _r = gets.chomp.split.map(&:to_i)
    r = gets.chomp.split.map {|i| i.to_i - 1 }
    @rsize = r.size
    @dp = Array.new(1 << MAX_N) { Array.new(MAX_N, -1) }

    d = Hash.new { |h, k| h[k] = {} }
    dist = Hash.new { |h, k| h[k] = {} }
    @table = Array.new(@rsize) { Array.new(@rsize, 0) }

    m.times do
      a, b, c = gets.chomp.split.map(&:to_i)
      a -= 1
      b -= 1
      d[a][b] = c
      d[b][a] = c
    end

    r.each do |s|
      queue = []
      queue << [s, 0]
      check_list = Hash.new

      until queue.empty?
        node = queue.shift
        next if check_list[node.first]
        check_list[node.first] = true

        dist[s][node.first] = node.last
        dist[node.first][s] = node.last

        d[node.first].each_key do |n|
          queue << [n, node.last + d[node.first][n]]
          queue.sort_by! { |q| q.last }
        end
      end
    end

    r.each_with_index do |a, i|
      r.each_with_index do |b, j|
        next if i == j
        @table[i][j] = dist[a][b]
      end
    end

=begin
    puts r.permutation.map { |list|
      cost = 0

      list.each_cons(2) do |a, b|
        cost += dist[a][b]
      end

      cost
    }.min
=end

    puts rec(0, 0)
  end

  def rec(s, v)
    if @dp[s][v] >= 0
      return @dp[s][v]
    end

    if s == (1 << @rsize) - 1
      return @dp[s][v] = 0
    end

    res = Float::INFINITY

    @rsize.times do |u|
      if (s >> u & 1) == 0
        res = [res, rec(s | 1 << u, u) + @table[v][u]].min
      end
    end

    @dp[s][v] = res
  end
end

Atcoder.new
