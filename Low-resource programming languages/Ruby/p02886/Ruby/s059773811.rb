require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    n = gets.chomp.to_i
    ds = gets.split.map(&:to_i)

    ans = 0
    0.upto(n-2) do |i|
      (i+1).upto(n-1) do |j|
        ans += ds[i] * ds[j]
      end
    end

    puts ans
  end
end

if __FILE__ == $0
  Solver.new.main
end
