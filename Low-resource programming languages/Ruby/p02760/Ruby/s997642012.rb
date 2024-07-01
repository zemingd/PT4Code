# Wrote in 2020-03-01 21:04:26 by reetok
require 'time'
require 'prime'
def inp(type=:to_i,spst=" ")
  return eval("gets.chomp.split(#{spst}).map(&:#{type})")
end
def inpf() return self.inp(:to_f," ") end
def inps() return self.inp(:to_s," ") end
def r_up(a, b) (a/b).ceil end
def r_down(a, b) (a/b).floor end
def sum(a) a.inject(:+) end
def big(a,b) return (a>b)? a:b end
def small(a,b) return (a<b)? a:b end
def minp(n,datatype=:to_i)
  t = []
  n.times do
    t.push(eval("gets.chomp.#{datatype.to_s}"))
  end
  return t
end
def yes() puts "Yes" end
def no() puts "No" end
def ynju(bool,yes="Yes",no="No") puts (bool ? yes : no) end
#---------------

array = []

array.push(inp)
array.push(inp)
array.push(inp)

n = inp[0]

b = minp(n)
i = 0
array.each{|a| 
  if a[0].include?(b)
    array[i][0] = true
  elsif a[1].include?(b)
    array[i][1] = true
  elsif a[2].include?(b)
    array[i][2] = true
  end
  i+=1
}


if a[0][0]&&a[0][1]&&a[0][2] || a[1][0]&&a[1][1]&&a[1][2]||a[2][0]&&a[2][1]&&a[2][2]||a[0][0]&&a[1][0]&&a[2][0]||a[0][1]&&a[1][1]&&a[2][1]||a[0][2]&&a[1][2]&&a[2][2]||a[0][0]&&a[1][1]&&a[2][2]||a[0][2]&&a[1][1]&&a[2][0]
  puts "Yes"
else
  puts "No"
end