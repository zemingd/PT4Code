class Solver
  def initialize

    loop do
      h, w = gets.chomp.split(' ').map(&:to_i)

      break if h.zero? && w.zero?

      res = []
      h.times{ res << '#' * w }
      puts res
    end
  end
end

Solver.new