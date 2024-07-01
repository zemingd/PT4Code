require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    x, a, b = gets.chomp.split.map(&:to_i)

    if b <= a
      puts "delicious"
    elsif b - a <= x
      puts "safe"
    else
      puts "dangerous"
    end
  end
end

if __FILE__ == $0
  Solver.new.main
end
