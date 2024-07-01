require 'pp'

def gets; ARGF.gets; end

class Solver

  def initialize
    @nums = []
  end

  def main
    s = gets.chomp.chars.sort
    t = gets.chomp.chars.sort
    # puts s
    # puts t

    if s[0] < t[-1]
      puts "Yes"
      return
    elsif t[-1] < s[0]
      puts "No"
      return
    end

    if s[0] == s[-1] && t[0] == t[-1]
      if s.length < t.length
        puts "Yes"
        return
      else
        puts "No"
        return
      end
    end

    puts "No"
  end
end

if __FILE__ == $0
  Solver.new.main
end
