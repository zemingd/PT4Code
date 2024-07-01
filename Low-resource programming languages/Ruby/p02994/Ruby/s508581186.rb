n,l = gets.chomp.split.map(&:to_i)

sum = (0..n).map do |i|
    l + i - 1
end

result = sum - l.min_by{|i|(i - 0).abs}
puts result