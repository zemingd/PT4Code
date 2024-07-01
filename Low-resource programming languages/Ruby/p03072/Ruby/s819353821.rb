inputs = readlines
n = inputs[0].to_i
h = inputs[1].split.map!(&:to_i)
max = h[0]
count = 1
for i in 2..n do
    if max <= h[i-1]
        max = h[i-1] 
        count += 1
    end
end
p count