require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
  end

  def main
    s = gets.chomp.chars
    t = gets.chomp.chars

    ans = 0
    ans += 1 if s[0] == t[0]
    ans += 1 if s[1] == t[1]
    ans += 1 if s[2] == t[2]


    puts ans
  end
end

if __FILE__ == $0
  Solver.new.main
end
