lines = $stdin.read
array = lines.split("\n")

n = array[0].to_i
s = array[1..n]
z = 0
s.each {|e| z += e.to_i }

if z % 10 == 0
  puts 0
else
  puts z
end