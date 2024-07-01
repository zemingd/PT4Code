require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    h, a = gets.split.map(&:to_i)

    sum = gets.split.map(&:to_i).inject(0) do |s, i|
      s += i
    end
    # puts sum

    if sum < h
      puts "No"
    else
      puts "Yes"
    end
  end
end

if __FILE__ == $0
  Solver.new.main
end
