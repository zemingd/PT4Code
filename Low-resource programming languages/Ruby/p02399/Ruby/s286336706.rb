def read_input
  gets.split(" ").map(&:to_i)
end

class ABProblem
  def initialize(a, b)
    @a, @b = a, b
  end

  def div
    @a / @b
  end

  def mod
    @a % @b
  end

  def div_float
    sprintf("%.5f", @a.to_f / @b.to_f)
  end
end

a, b = read_input
p = ABProblem.new(a, b)
puts [p.div, p.mod, p.div_float].join(" ")