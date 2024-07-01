ss = gets.rstrip.split('')
ini_size = ss.size

stack = []
while s = ss.pop
  if stack.empty?
    stack.push s
  else
    if stack.last != s
      stack.pop
    else
      stack.push s
    end
  end
end

p (ini_size - stack.size)