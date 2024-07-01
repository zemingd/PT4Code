require 'pp'

def gets; ARGF.gets; end

class Solver

  def main
    n = gets.chomp.to_i
    ary = gets.chomp.split.map(&:to_i)

    nums = Array.new(n)

    ary.each_with_index do |a, i|
      nums[i] = [a, i]
    end

    nums.sort!

    nums.each do |(a, i)|
      print "#{i+1} "
    end
    puts ""

  end
end

if __FILE__ == $0
  Solver.new.main
end
