n = gets.to_i
a = 1

gets.split.each do |e|
    e = e.to_i
    a += 1 if a == e
end

puts n - a + 1