# Wrote in Apr 10, 2020 18:36 by reetok
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
def minp(n,datatype=".split(\" \").map(&:to_i)")
  t = []
  n.times do
    t.push(eval("gets.chomp#{datatype}"))
  end
  return t
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
  def upper(a) #a yori ue
    self.sort.select{|n|n>=a}
  end
  def downer(a) #a yori shita
    self.sort.select{|n|n<=a}
  end
end
#---------------

def main()
  loop do
      a = gets.chomp
      if a == "0"
          break
      end
      puts a.split("").map(&:to_i).inject(:+)
  end
end
main()
