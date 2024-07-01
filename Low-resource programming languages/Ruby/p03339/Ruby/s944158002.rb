# input
n = gets.chomp.to_i
str = gets.chomp
min = nil

n.times do |i|
  # 親を決める
  str[i] = "W"
  i.times do |j|
    case str[j]
    when "W"
      str[j] = "E"
    when "E"
      str[j] = "W"
    end
  end
  min = min ? [min, str.count("E")].min : str.count("E")
end
puts min
