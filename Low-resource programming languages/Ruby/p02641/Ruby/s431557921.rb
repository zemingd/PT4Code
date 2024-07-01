x,n = gets.split.map &:to_i
p = gets.split.map &:to_i

a = (0..101).to_a - p

result = a.min_by{|i|(x - 0.1 - i).abs}

puts result