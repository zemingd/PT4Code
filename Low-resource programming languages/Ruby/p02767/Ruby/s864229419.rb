n = gets.to_i
x = gets.split.map(&:to_i)
min = x.inject(0){|r,i| r + i ** 2}

1.upto(100) do |d|
    m = x.inject(0){|r,i| r + (i - d) ** 2}
    min = m if min > m
end

puts min