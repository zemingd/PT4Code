MODE = "stdio"

line = Array.new

if(defined? MODE)
  line = STDIN.read.split("\n")
else
  tmp = "\
  5
  1 2 3 4 5
  ".split("\n")
  tmp.each{|s|
    line << s.strip
  }
end

ar = line[1].split(" ")
puts ar.reverse.join(" ")