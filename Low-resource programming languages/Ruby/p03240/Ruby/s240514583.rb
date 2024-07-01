require 'pp'
n = gets.to_i
arr = []
n.times do |i|
  # x y h
  arr << gets.split.map(&:to_i)
end


arr.select!{|a|a[2] != 0}
if arr.size == 1
  puts [arr[0][0],arr[0][1],1].join(' ')
  exit
end



true_x = true_y = true_h = nil
(0..100).to_a.product((0..100).to_a).each do |(x,y)|
  pre_h = nil
  true_flag = false
  arr.size.times do |i|
    nx, ny, nh = *arr[i]
    # next if nh == 0
    h = nh + (nx - x).abs + (ny - y).abs
    break if pre_h && pre_h != h
    pre_h = h
    # p [i,arr.size-1]
    if i == arr.size - 1
      true_x = x
      true_y = y
      true_h = h
      true_flag = true
    end
  end
  break if true_flag
end
puts [true_x, true_y, true_h].join(' ')
