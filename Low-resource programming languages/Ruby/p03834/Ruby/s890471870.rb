require 'pp'

def gets; ARGF.gets; end

class Solver

  def main
    s = gets.chomp

    s.gsub!(',', ' ')

    puts s
  end
end

if __FILE__ == $0
  Solver.new.main
end
