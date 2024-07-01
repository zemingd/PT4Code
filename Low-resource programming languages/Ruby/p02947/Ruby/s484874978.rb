line = readlines.map(&:chomp)

x = (line[0].to_i) + 1
result = []
plus = 0

x.times {|i|
    result << line[i].chars.sort.join
}

uniq_array = result.uniq

uniq_array.each {|string|
    if result.count(string) > 2
        plus += result.count(string) - 2
    end
}

puts (line.length - result.uniq.length).to_i + plus