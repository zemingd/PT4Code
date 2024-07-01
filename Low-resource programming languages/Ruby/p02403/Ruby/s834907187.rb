# Wrote in Mar 5, 2020 11:24 by reetok
require 'time'
require 'prime'
require 'bigdecimal'
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
class Integer
  def divisor_list
    devisors = [1]
    2.upto(self/2) do |i|
      devisors << i if self%i == 0
    end
    devisors << self
    return devisors.uniq.sort
  end
end
class Array
  def upper(a) #aより上
    self.sort.select{|n|n>=a}
  end
  def downer(a) #aより下
    self.sort.select{|n|n<=a}
  end
end

#---------------

while (h,w=inp)!=[0,0]
  h.times do
    puts "#" * w
  end
  puts "\n"
end

