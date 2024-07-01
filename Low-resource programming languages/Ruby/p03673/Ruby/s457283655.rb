lines = $stdin.read
array = lines.split("\n")

n = array[0].to_i
a = array[1].split(" ").map(&:to_i)
b = []

for i in 0...(a.length)
  b.push(a[i])
  b.reverse!
end

puts b.join(" ")
