w,h,n = gets.chomp.split(' ').map(&:to_i)
list = []
n.times do
  list << gets.chomp.split(' ').map(&:to_i)
end
p_list = [0,w,0,h]
list.each do |arr|
  if arr[2] == 1
    if p_list[0] < arr[0]
      p_list[0] = arr[0]
    end
  elsif arr[2] == 2
    if p_list[1] > arr[0]
      p_list[1] = arr[0]
    end
  elsif arr[2] == 3
    if p_list[2] < arr[1]
      p_list[2] = arr[1]
    end
  else
    if p_list[3] > arr[1]
      p_list[3] = arr[1]
    end
  end
end
puts [p_list[1]-p_list[0],0].max * [p_list[3]-p_list[2],0].max
