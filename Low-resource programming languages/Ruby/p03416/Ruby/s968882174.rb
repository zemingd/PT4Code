require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    a, b = gets.split.map(&:to_i)

    ans = 0
    a.upto(b) do |i|
      s = i.to_s
      sr = s.reverse

      ans += 1 if s == sr
    end

    puts ans
  end
end

if __FILE__ == $0
  Solver.new.main
end
