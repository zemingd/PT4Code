n = gets.to_i
t,a = gets.chomp.split(' ').map(&:to_i)
arr = gets.chomp.split(' ').map(&:to_i)
tag = 0
min = 10 ** 9
arr.each_with_index do |h,id|
  dif = (a - (t - h * 0.006)).abs
  if dif < min
    min = dif
    tag = id
  end
end
puts tag + 1