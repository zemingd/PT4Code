MODE = "stdio"
#require 'matrix'
#include Math
line = Array.new

if(defined? MODE)
  line = STDIN.read.split("\n")
else
  tmp = '1 1 +'.split("\n")
  tmp.each{|s|
    line << s.strip
  }
end


arr = line[0].split(" ")
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
#  p stack
end

puts stack.pop