N = gets.to_i
A = gets.split.map(&:to_i).sort

counts = Array.new(A[-1] + 1, 0)

A.each do |x|
    counts[x] += 1
end

c = 0
counts.each_with_index do |count, i|
    next if count == 0
    c += 1 if count == 1
    i.step(A[-1] ,i) do |k|
        counts[k] = 0
    end
end
puts c
