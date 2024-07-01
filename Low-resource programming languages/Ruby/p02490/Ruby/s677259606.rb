a = Array.new
while (line = gets) != "0 0\n"
 a << line.split(" ").map(&:to_i).sort
end
a.each {|x| puts x.join(" ")}