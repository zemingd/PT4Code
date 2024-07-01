n,k = gets.chomp.split.map(&:to_i)
hs = $stdin.read.split("\n").map(&:to_i).sort

#count = 0
light = []

for i in 0..n-k
    light << hs[i+k-1] - hs[i]
end

puts light.min
