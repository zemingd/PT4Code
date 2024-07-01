a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
x = gets.chomp.to_i
count = 0

([x/500, a].min + 1).times do |i|
  r = x - 500 * i

  ([r/100, b].min + 1).times do |j|
    if (r - 100 * j)/50 <= c
      count += 1
    end
  end
end

puts count
