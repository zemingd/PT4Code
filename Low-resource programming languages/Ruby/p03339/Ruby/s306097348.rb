# input
n = gets.chomp.to_i
str = gets.chomp
min = nil

n.times do |i|
  # 親を決める
  str[0..i].each do |j|
    if j=="E"
      j="W"
    else
      j="E"
    end
  end
  min = min ? [min, str.count("W")] : str.count("W")
end
puts min
