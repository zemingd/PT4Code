arr = 3.times.map{gets.chomp.split.map(&:to_i)}
N = gets.to_i
B = N.times.map{gets.to_i}

B.each do |b|
  3.times do |y|
    3.times do |x|
      if arr[y][x] == b
        arr[y][x] = -1
      end
    end
  end
end

flag = false
arr2 = arr.transpose
3.times do |i|
  flag = true if arr[i].select{|num| num == -1}.length == 3
  flag = true if arr2[i].select{|num| num == -1}.length == 3
end

flag = true if arr[0][0] == arr[1][1] && arr[1][1] == arr[2][2] && arr[1][1] == -1
flag = true if arr[0][0] == arr[1][1] && arr[1][1] == arr[2][2] && arr[1][1] == -1
  
puts (flag ? 'Yes' : 'No')
      