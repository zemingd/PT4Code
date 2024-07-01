gets
h = gets.chomp.split(" ").map(&:to_i)
ans = 0
highest = 0

h.each do |e|
    ans += 1 if e >= highest
    highest = e > highest ? e : highest
end

puts ans