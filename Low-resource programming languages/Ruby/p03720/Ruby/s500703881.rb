require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    n, m = gets.chomp.split.map(&:to_i)

    nums = Array.new(n, 0)
    m.times do
      a, b = gets.chomp.split.map(&:to_i)
      nums[a-1] += 1
      nums[b-1] += 1
    end

    nums.each_with_index do |nn, i|
      puts nn
    end
  end
end

if __FILE__ == $0
  Solver.new.main
end
