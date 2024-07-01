MODE = "stdio"
require 'matrix'
line = Array.new

if(defined? MODE)
  line = STDIN.read.split("\n")
else
  tmp = "\
  123
  55
  1000
  0
  ".split("\n")
  tmp.each{|s|
    line << s.strip
  }
end

n=0
s=nil
while true
  s = line[n]
  break if s == "0"
  n += 1  
  puts s.chars.map(&:to_i).inject(&:+)
end