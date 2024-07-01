N = gets.to_i
line = gets
data = line.split(" ")
count = Hash.new
data.each do |item|
  item = item.to_i
  [-1, 0, 1].each do |i|
    if !count.key?(item + i)
      count[item + i] = 1
    else
      count[item + i] += 1
    end
  end
end
p count.max{|x, y| x[1] <=> y[1]}[1]