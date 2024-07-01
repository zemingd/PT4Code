n = gets.chomp.to_i
t, a = gets.chomp.split.map(&:to_i)
ary = gets.chomp.split.map(&:to_i)
min = Float::INFINITY
min_index = n+1

ary.each_with_index do |item, index|
  tmp_temprature = (t-item*0.006-a).abs
  if tmp_temprature < min
    min_index = index
    min = tmp_temprature
  end
end
puts min_index+1
