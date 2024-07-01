lines = $stdin.read
array = lines.split("\n")
n     = array[0].to_i
arr   = array[1].split(" ").map(&:to_i)
absar = []

if n == 2
  puts (arr[0] - arr[1]).abs
  exit
end

# "i" is sunuke's card
S = arr.inject {|sum, n| sum + n }

for i in 1..arr.size-2
  sunuke = arr.slice(0, i)
  #arai   = arr.slice(i, arr.size)
  #puts sunuke.to_s
  #puts arai.to_s

  x = sunuke.inject {|sum, n| sum + n }
  #puts x

  y = S - x
  #y = arai.inject {|sum, n| sum + n }
  #puts y

  xx = (x - y).abs
  absar.push(xx)
  #puts xx
  #puts "---"
end

puts absar.min
