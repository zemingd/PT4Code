require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    h, k = gets.chomp.split.map(&:to_i)
    hary = gets.chomp.split.map(&:to_i).sort

    if h <= k
      puts "0"
      return
    end


    sum = 0
    (h - k).times do |i|
      sum += hary[i]
    end

    puts sum
  end
end

if __FILE__ == $0
  Solver.new.main
end
