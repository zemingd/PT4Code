class Solver
  def solve
    n, k = gets.chop.split.map(&:to_i)

    h = Array.new(100010, 0)
    x = gets.chop.split.map(&:to_i)
    n.times do |i|
      h[i] = x[i]
    end

    dp = Array.new(100010, 1<<60)
    dp[0] = 0

    n.times do |i|
      k.times do |kk|
        j = kk + 1
        v = dp[i] + (h[i] - h[i+j]).abs
        dp[i+j] = v if dp[i+j] > v
      end
    end

    puts dp[n-1]
  end
end

Solver.new.solve
~