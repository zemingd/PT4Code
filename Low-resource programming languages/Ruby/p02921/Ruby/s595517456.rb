a = gets.split(" ").map{|x| x.to_s}
b = gets.split(" ").map{|x| x.to_s}
count = 0
3.times do |i|
  if a[i] == b[i]
    count += 1
  end
end

p count
