require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    initial_n = gets.chomp.to_i
    n = initial_n

    r_sum = 0
    while 0 < n
      n, r = n.divmod(10)
      r_sum += r
    end

    if initial_n % r_sum == 0
      puts "Yes"
    else
      puts "No"
    end
  end
end

if __FILE__ == $0
  Solver.new.main
end
