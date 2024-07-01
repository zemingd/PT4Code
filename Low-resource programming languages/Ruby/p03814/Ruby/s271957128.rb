require 'pp'

def gets; ARGF.gets; end

class Solver

  def main
    s = gets.chomp

    a_idx = s.index('A')
    z_idx = s.rindex('Z')

    # puts a_idx
    # puts z_idx

    ans = z_idx - a_idx + 1
    puts ans
  end
end

if __FILE__ == $0
  Solver.new.main
end
