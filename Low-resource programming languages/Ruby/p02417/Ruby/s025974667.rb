MODE = "stdio"
require 'matrix'
line = Array.new

if(defined? MODE)
  line = STDIN.read.split("\n")
else
  tmp = "\
  This is a pen.
  ".split("\n")
  tmp.each{|s|
    line << s.strip
  }
end
  s = line[0].downcase

  [*'a'..'z'].each do |a|
    puts "#{a} : #{s.count(a)}"
  end