require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    a, b, c = gets.chomp.split.map(&:to_i)

    if a <= c && c <= b
      puts "Yes"
    else
      puts "No"
    end
  end
end

if __FILE__ == $0
  Solver.new.main
end
