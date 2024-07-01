a, b, c, d = gets.split(" ").map(&:to_i)
count = 0
for i in a..b
  if i%c!=0
    if i%d!=0
      count+=1
    end
  end
end

p count