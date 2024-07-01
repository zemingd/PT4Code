N=gets.to_i

h=Hash.new(0)
N.times do
    h[gets.chomp.chars.sort.join] += 1
end

sum = 0
h.values.each do |n|
    next if n < 2
    sum += n*(n-1)/2
end

puts sum