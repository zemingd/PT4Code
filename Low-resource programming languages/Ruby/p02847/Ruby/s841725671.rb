require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    s = gets.chomp

    puts case s
         when "MON" then 6
         when "TUE" then 5
         when "WED" then 4
         when "THU" then 3
         when "FRI" then 2
         when "SAT" then 1
         when "SUN" then 7
         else 0
         end
  end
end

if __FILE__ == $0
  Solver.new.main
end
