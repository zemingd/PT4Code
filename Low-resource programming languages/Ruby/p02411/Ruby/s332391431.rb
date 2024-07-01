# Wrote in Mar 11, 2020 12:59 by reetok
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
def minp(n,datatype=".to_i")
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
  def upper(a) #aより上
    self.sort.select{|n|n>=a}
  end
  def downer(a) #aより下
    self.sort.select{|n|n<=a}
  end
end
#---------------

students = []

loop do
  a = inp
  if a == [-1,-1,-1]
    break
  else
    students.push(a)
  end
end

students.each do |n|
  if n[0]==-1||n[1]==-1
    puts "F"
  elsif n[0]+n[1]  >= 80
    puts "A"
  elsif n[0]+n[1] >= 65
    puts "B"
  elsif n[0]+n[1] >= 50
    puts "C"
  elsif n[0]+n[1] >= 30
    if n[2] >= 50
      puts "C"
    else
      puts "D"
    end
  else
    puts "F"
  end
end

