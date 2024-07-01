require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    s = gets.chomp

    ans = s[0] + (s.length - 2).to_s + s[-1]
    puts ans
  end
end

if __FILE__ == $0
  Solver.new.main
end
