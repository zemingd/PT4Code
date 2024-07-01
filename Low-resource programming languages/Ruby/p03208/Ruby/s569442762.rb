n,k = gets.chomp.split.map(&:to_i)
hs = $stdin.read.split("\n").map(&:to_i).sort

#count = 0
light = []

for i in 0..n-k
    ms = hs.slice(i,k)
    
    light << ms.max - ms.min
end

puts light.min
