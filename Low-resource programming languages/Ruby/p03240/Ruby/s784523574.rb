require 'pp'
n = gets.to_i
arr = []
n.times do |i|
  # x y h
  arr << gets.split.map(&:to_i)
end

true_x = true_y = true_h = nil
(0..100).to_a.product((0..100).to_a).each do |(x,y)|
  pre_h = nil
  n.times do |i|
    nx, ny, nh = *arr[i]
    next if nh == 0
    h = nh + (nx - x).abs + (ny - y).abs
    if pre_h && pre_h != h
      break
    end
    pre_h = h
    if i == n - 1
      true_x = x
      true_y = y
      true_h = h
    end
  end
end
puts [true_x, true_y, true_h].join(' ')
