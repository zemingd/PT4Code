=begin
A A A
A A A
A A A
N
b1
...
bn
=end
as1 = gets.chomp.split(" ").map(&:to_i)
as2 = gets.chomp.split(" ").map(&:to_i)
as3 = gets.chomp.split(" ").map(&:to_i)
as = as1 + as2 + as3

n = gets.chomp.to_i
bs = []

for i in (0...n) do
  bs << gets.chomp.to_i
end

bingos = Array.new(9, false)

bs.each do |b|
  if (i = as.index(b))
    bingos[i] = true
  end
end

answer = false

[
  [0,1,2],
  [3,4,5],
  [6,7,8],

  [0,3,6],
  [1,4,7],
  [2,5,8],

  [0,4,8],
  [2,4,5],
].each do |i1,j1,k1|
  if bingos[i1] && bingos[j1] && bingos[k1]
    answer = true
  end
end

if answer
  puts "Yes"
else
  puts "No"
end
