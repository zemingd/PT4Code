require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    r, g, b = gets.chomp.split.map(&:to_i)

    n = g * 10 + b
    if n % 4 == 0
      puts "YES"
    else
      puts "NO"
    end
  end
end

if __FILE__ == $0
  Solver.new.main
end
