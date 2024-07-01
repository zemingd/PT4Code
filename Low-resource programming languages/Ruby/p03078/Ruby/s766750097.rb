x, y, z, k = gets.chop.split.map(&:to_i)
as = gets.chop.split.map(&:to_i).sort! { |x, y| y <=> x }
bs = gets.chop.split.map(&:to_i).sort! { |x, y| y <=> x }
cs = gets.chop.split.map(&:to_i).sort! { |x, y| y <=> x }

ab_sums = []

as.each do |a|
    bs.each do |b|
        ab_sums << a + b
    end
end

ab_sums.sort! { |x, y| y <=> x }
ab_sums = ab_sums[0, [x * y * z, 3000].min]

abc_sums = []
ab_sums.each do |ab|
    cs.each do |c|
        abc_sums << ab + c
    end
end

abc_sums.sort! { |x, y| y <=> x }
k.times do |i|
  puts abc_sums[i]
end

