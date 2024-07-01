# Wrote in Feb 29, 2020 13:34 by reetok
require 'time'
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
end
def yes() puts "Yes" end
def no() puts "No" end
def ynju(bool,yes="Yes",no="No") puts (bool ? yes : no) end
#---------------

puts inp.sort.join(" ")
