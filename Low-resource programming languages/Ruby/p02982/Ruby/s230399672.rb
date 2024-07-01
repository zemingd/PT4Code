n, d = gets.split.map(&:to_i)
xs = readlines.map { |l| l.split.map(&:to_i) }

count = 0
xs.each_with_index do |is, i|
  ((i + 1)..(n - 1)).each do |j|
    js = xs[j]
    r = 0
    is.each_with_index do |v, idx|
      r += (v.abs - js[idx].abs) ** 2
    end
    r = r ** (1 / 2.0)
    count += 1 if r % 1 == 0
  end
end

puts count