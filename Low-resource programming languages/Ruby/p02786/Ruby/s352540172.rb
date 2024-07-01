require 'pp'

def gets; ARGF.gets; end

class Solver

  def main
    h = gets.chomp.to_i

    x = 1
    loop do
      if h < x
        puts x - 1
        return
      end

      x *= 2
    end
  end
end

if __FILE__ == $0
  Solver.new.main
end
