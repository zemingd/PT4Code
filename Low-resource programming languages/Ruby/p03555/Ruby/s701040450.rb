require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    s1 = gets.chomp
    s2 = gets.chomp.reverse

    if s1 == s2
      puts "YES"
    else
      puts "NO"
    end

  end
end

if __FILE__ == $0
  Solver.new.main
end
