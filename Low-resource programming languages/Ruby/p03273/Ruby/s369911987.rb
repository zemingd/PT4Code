H,W = gets.chomp.split(" ").map(&:to_i)
math = []
W.times do |i|
  gyou = gets.chomp.split("")
  math << gyou
end

math.each_with_index do |gyou, i|
  if gyou.count(".") == W
    math.delete_at(i)
  end
end


math[0].length.times do |i|
  delete = true
  math.each_with_index do |gyou, j|
    if gyou[i] == "#"
      delete = false
    end
  end
  if delete
    math.each_with_index do |gyou, j|
      gyou.delete_at(i)
    end
  end
end


math.each_with_index do |gyou, j|
  output = ""
  gyou.each do |str|
    output = output + str
  end
  print(output+"\n")
end
