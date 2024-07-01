N = gets.to_i
s = Hash.new(-1)
count = 0
N.times do |i|
    tmp = gets.chars.sort.join
    s[tmp] += 1
end

s.each do |k, v|
    count += (0..v).to_a.combination(2).size
end

puts count


