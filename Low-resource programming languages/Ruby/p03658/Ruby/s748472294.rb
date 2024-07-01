require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    n, k = gets.chomp.split.map(&:to_i)

    ls = gets.chomp.split.map(&:to_i)
    lsr = ls.sort.reverse

    ans = 0
    k.times do |i|
      ans += lsr[i]
    end

    puts ans
  end
end

if __FILE__ == $0
  Solver.new.main
end
