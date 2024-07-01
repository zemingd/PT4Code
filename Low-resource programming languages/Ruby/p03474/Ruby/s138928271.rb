require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
    @nums = []
  end

  def main
    a, b = gets.split.map(&:to_i)
    s = gets

    if s[0, a] !~ /\d+/
      puts "No"
      return
    end

    if s[a] != '-'
      puts "No"
      return
    end

    if s[a+1, b] !~ /\d+/
      puts "No"
      return
    end

    puts "Yes"

  end
end

if __FILE__ == $0
  Solver.new.main
end
