ary_size, k = gets.chomp.split.map(&:to_i)
ary = gets.chomp.split.map(&:to_i)
cnt = []

ary.each_with_index do |x, i|
  break if i + k > ary_size
  total = 0.0
  k.times do |num|
    l = i + num
    total += (1+ary[l])/2.to_f
  end
  cnt << total
end
max = cnt.max
puts sprintf("%.12f", max)