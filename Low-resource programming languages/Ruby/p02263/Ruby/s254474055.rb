
def stack
  arr = gets.chomp.split(" ")
  stack = []

  arr.each do |val|
    if val.match(/\d/)
      stack.push(val)
    else
      val1 = stack.pop.to_i
      val2 = stack.pop.to_i
      temp = if val == "*"
        val1 * val2
      elsif val == "-"
        val2 - val1
      else val == "+"
        val1 + val2
      end
      stack.push(temp)
    end
  end
  stack[0]
end

p stack