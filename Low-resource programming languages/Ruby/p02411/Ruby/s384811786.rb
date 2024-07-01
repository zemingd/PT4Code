MODE = "stdio"
require 'matrix'
line = Array.new

if(defined? MODE)
  line = STDIN.read.split("\n")
else
  tmp = "\
  40 42 -1
  20 30 -1
  0 2 -1
  -1 -1 -1
  ".split("\n")
  tmp.each{|s|
    line << s.strip
  }
end

m,f,r=[0,0,0]
n=0
while true
  m,f,r = line[n].split(" ").map(&:to_i)
  break if m+f+r == -3
  n += 1
  if m==-1 || f==-1
    puts "F"
  elsif m+f>=80
    puts "A"
  elsif 65<=m+f && m+f<80
    puts "B"
  elsif 50<=m+f && m+f<65
    puts "C"
  elsif 30<=m+f && m+f<50
    if r>=50
      puts "C"
    else
      puts "D"
    end
  else
    puts "F"
  end
end