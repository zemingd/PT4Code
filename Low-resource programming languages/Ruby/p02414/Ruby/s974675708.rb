MODE = "stdio"
require 'matrix'
line = Array.new

if(defined? MODE)
  line = STDIN.read.split("\n")
else
  tmp = "\
  3 2 3
  1 2
  0 3
  4 5
  1 2 1
  0 3 2
  ".split("\n")
  tmp.each{|s|
    line << s.strip
  }
end
n,m,l=line[0].split(" ").map(&:to_i)
a = []
b = []
(1..n).each do |n|
  a << line[n].split(" ").map(&:to_i)
end

(1+n..n+m).each do |m|
  b << line[m].split(" ").map(&:to_i)
end

A = Matrix[*a]
B = Matrix[*b]
  
  
(A*B).to_a.each do |s|
  puts s.join(" ")
end