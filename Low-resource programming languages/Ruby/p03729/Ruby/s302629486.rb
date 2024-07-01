require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    a, b, c = gets.chomp.split

    if a[-1] == b[0] && b[-1] == c[0]
      puts "YES"
    else
      puts "NO"
    end

  end
end

if __FILE__ == $0
  Solver.new.main
end
