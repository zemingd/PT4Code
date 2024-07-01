class Stack
  def initialize
    @sz = 0
    @elem = []
  end

  def push obj
    @elem << obj
    @sz += 1
  end

  # returns obj or nil if the stack is empty                                                                                                                 
  def pop
    obj = @elem.last
    @sz -= 1 if @sz > 0
    @elem = @elem[0..-2]
    obj
  end

  def peak
    obj = @elem.last
    obj
  end
end

def main
  while str = gets
    exp = str.chomp.split(/\s/)
    stack = Stack.new
    exp.each do |elem|
      if operator? elem
        oprand2 = stack.pop
        oprand1 = stack.pop
        stack.push(evaluate(elem, oprand1, oprand2))
      else
        stack.push elem
      end
    end
    puts stack.pop
  end
end  


def operator? str
  str == "+" or str == "-" or str == "*" or str == "/"
end  

def evaluate(op,oprand1,oprand2)
  num1 = oprand1.to_i
  num2 = oprand2.to_i
  res = case op
        when "+"
          num1 + num2
        when "-"
          num1 - num2
        when "*"
          num1 * num2
        when "/"
          num1 / num2
        end
  res
end


main