require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    x, y = gets.chomp.split.map(&:to_i)

    g0 = [1, 3, 5, 7, 8, 10, 12]
    g1 = [4, 6, 9, 11]
    g2 = [2]

    if g0.include?(x) && g0.include?(y) ||
        g1.include?(x) && g1.include?(y) ||
        g2.include?(x) && g2.include?(y)
      puts "Yes"
    else
      puts "No"
    end

  end
end

if __FILE__ == $0
  Solver.new.main
end
