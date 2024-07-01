require 'pp'

def gets; ARGF.gets; end

class Solver

  def main
    a, b, c = gets.split.map(&:to_i)

    if 22 <= a + b + c
      puts "bust"
    else
      puts "win"
    end
  end
end

if __FILE__ == $0
  Solver.new.main
end
