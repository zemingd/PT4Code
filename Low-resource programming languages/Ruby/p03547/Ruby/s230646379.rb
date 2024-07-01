require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    a, b = gets.chomp.split
    if a < b
      puts "<"
    elsif a == b
      puts "="
    else
      puts ">"
    end
  end
end

if __FILE__ == $0
  Solver.new.main
end
