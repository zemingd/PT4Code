MODE = "stdio"
#require 'matrix'
#include Math
line = Array.new

if(defined? MODE)
  line = STDIN.read.split("\n")
else
  tmp = '34 116 + 20 5 - 5 - 1 * +'.split("\n")
  tmp.each{|s|
    line << s.strip
  }
end


arr = line[0].split(" ")
p arr
stack = []
arr.each do |i|
  case i
  when "+"
    stack.push(stack.pop+stack.pop)
  when "-"
    stack.push(-stack.pop+stack.pop)
  when "*"
    stack.push(stack.pop*stack.pop)
  else
    stack.push(i.to_i)
  end
  p stack
end

puts stack.pop