arr = Array.new(4){ Array.new(3) { Array.new(10,0) }}

n = gets.to_i
n.times{
  b, f, r, v = gets.split.map(&:to_i)
  arr[b - 1][f - 1][r - 1] += v
}

for b in 1..4
 for f in 1...3
  for r in 1...19
 puts " " + arr[b-1][f-1][r-1].join(" ")
end
end
if b > 1
puts "#" * 20
end
