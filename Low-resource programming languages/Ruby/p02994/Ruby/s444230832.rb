n,l = gets.chomp.split.map(&:to_i)

sum = (1..n).map do |i|
    l + i - 1
end

puts (sum.inject(:+) - (sum.min_by{|i|(i - 0).abs}))