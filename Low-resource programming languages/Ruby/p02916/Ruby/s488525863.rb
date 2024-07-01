require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    n = gets.chomp.to_i
    as = gets.split.map do |c|
      c.to_i - 1
    end
    bs = gets.split.map(&:to_i)
    cs = gets.split.map(&:to_i)

    last_a = 999
    ans = 0
    as.each do |a|
      ans += bs[a]
      if last_a + 1 == a
        ans += cs[last_a]
      end
      last_a = a
    end

    puts ans
  end
end

if __FILE__ == $0
  Solver.new.main
end
