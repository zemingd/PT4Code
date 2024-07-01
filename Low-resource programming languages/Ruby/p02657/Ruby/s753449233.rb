class A169
  def call(a, b)
    a * b
  end

  def main
    inputs = gets.split(' ')
    puts call(inputs[0].to_i, inputs[1].to_i)
  end
end

A169.new.main