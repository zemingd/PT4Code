a, b = gets.chomp.split(" ").map(&:to_i)
count = 0
for i in a..b do
  i = i.to_s.split("")
  if i[0] == i[4]
    if i[1] == i[3]
      count += 1
    end
  end
end

p count