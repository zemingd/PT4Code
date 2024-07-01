
n, d = gets.chomp.split.map(&:to_i)
x = n.times.map{gets.chomp.split.map(&:to_i)}#.transpose
combo = (0..(n - 1)).to_a.combination(2).to_a
p combo
p x
sum = 0
cnt = 0
result = 0
combo.each do |a, b|
    d.times do |block|
        sum += (x[a][cnt] - x[b][cnt]) ** 2
        cnt += 1
    end
    result += 1 if Math.sqrt(sum) % 1 == 0.0
    cnt = 0
    sum = 0
end

puts result