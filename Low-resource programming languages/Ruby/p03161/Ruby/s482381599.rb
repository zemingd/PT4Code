class Solver
  def solve
    n, k = gets.chop.split.map(&:to_i)

    h = Array.new(10100, 0)
    x = gets.chop.split.map(&:to_i)
    n.times do |i|
      h[i] = x[i]
    end

    dp = Array.new(10100, 1<<60)
    dp[0] = 0

    n.times do |i|
      k.times do |j|
        v = dp[i] + (h[i] - h[i+j+1]).abs
        dp[i+j+1] = v if dp[i+j+1] > v
      end
    end

    puts dp[n-1]
  end
end

Solver.new.solve