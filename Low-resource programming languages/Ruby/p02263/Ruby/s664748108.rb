def arith(item)
  case item
  when '+' then
    proc {|a, b| a + b}
  when '-' then
    proc {|a, b| a - b}
  when '*' then
    proc {|a, b| a * b}
  else
    raise
  end
end

def solve(items)
  stack = []
  items.reverse!
  until items.empty?
    item = items.pop
    if item.match(/[0-9]+/)
      stack.push item.to_i
    else
      v1 = stack.pop
      v2 = stack.pop
      stack.push(arith(item).(v2, v1))
    end
  end
  stack.pop
end
puts solve(gets.split(" "))

