lines = $stdin.read
array = lines.split("\n")

n = array[0].to_i
a = array[1].split(" ").map(&:to_i)
b = []

for i in 0...(a.length)

  if n % 2 == 0
    if i % 2 == 0
      b.push a[i]
    else
      b.unshift a[i]
    end
  else
    if i % 2 == 1
      b.push a[i]
    else
      b.unshift a[i]
    end
  end

  #b.push(a[i])
  #b.reverse!
end

puts b.join(" ")
