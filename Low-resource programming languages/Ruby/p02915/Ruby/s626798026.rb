require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    n = gets.chomp.to_i
    
    puts n * n * n
  end
end

if __FILE__ == $0
  Solver.new.main
end
