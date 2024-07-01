class Main
  def self.run
    expressions = read_inputs
    expressions.each {|e| puts e.answer}
  end

  private

  def self.read_inputs
    expressions = []
    while true do
      a, op, b = gets.split(" ")
      break if op == "?"
      expressions << Expression.new(a.to_i, op, b.to_i)
    end
    expressions
  end
end

class Expression
  def initialize(a, op, b)
    @a, @op, @b = a, op, b
  end

  def answer
    case @op
      when "+" then @a + @b
      when "-" then @a - @b
      when "*" then @a * @b
      when "/" then @a / @b
      else ""
    end
  end
end

Main.run