a,b=gets.chomp.split(" ").map(&:to_i)

c = 0

(a..b).each do |i|
  if (i / 10000 == i % 10) && ((i % 10000) / 1000 == (i % 100) / 10)
    c += 1
  end
end

print(c)
