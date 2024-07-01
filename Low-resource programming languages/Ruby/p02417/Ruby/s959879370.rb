MODE = "stdio"
require 'matrix'
line = Array.new

if(defined? MODE)
  line = STDIN.read.split("\n")
else
  tmp = "\
  This is a pen.
  This is a pen.
  ".split("\n")
  tmp.each{|s|
    line << s.strip
  }
end

s = ""

n=0
while true 
  break if line[n] == nil
  s += line[n].downcase
  n += 1
end

[*'a'..'z'].each do |a|
    puts "#{a} : #{s.count(a)}"
  end