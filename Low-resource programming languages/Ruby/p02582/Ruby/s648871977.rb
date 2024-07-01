class Problem
  attr_accessor *(?a..?z).to_a.map(&:to_sym)
  def initialize
    @s = gets.chomp
  end

  def solve
    return 3 if s == "RRR"
    return 2 if s == "RRS"
    return 2 if s == "SRR"
    return 1 if s == "RSR"
    return 1 if s == "SSR"
    return 1 if s == "SRS"
    return 1 if s == "RSS"
    0
  end

  def show(ans)
    puts ans
  end
end

Problem.new.instance_eval do
  show(solve)
end