lines = $stdin.read
array = lines.split("\n")
A1,A2,A3 = array[0].split(" ").map(&:to_i)

if A1+A2+A3 >= 22
  puts "bust"
else
  puts "win"
end
