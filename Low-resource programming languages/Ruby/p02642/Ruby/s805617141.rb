N = gets.to_i
A = gets.split.map(&:to_i).sort
MAX = 10 ** 6

counts = Array.new(MAX + 1, 0)

A.each do |x|
    counts[x] += 1
end

c = 0
counts.each_with_index do |count, i|
    next if count == 0
    c += 1 if count == 1
    i.step(MAX ,i) do |k|
        counts[k] = 0
    end
end
puts c
