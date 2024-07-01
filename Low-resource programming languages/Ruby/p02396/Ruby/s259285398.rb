class Solver
  def initialize
    i = 1

    loop do
      num = gets.chomp.to_i

      break if num.zero?

      puts "Case #{i}: #{num}"

      i += 1
    end
  end
end

Solver.new