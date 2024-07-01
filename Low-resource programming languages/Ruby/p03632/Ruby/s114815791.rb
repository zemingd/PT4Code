a, b, c, d = gets.chomp.split.map(&:to_i)

arr1 = Array.new(100, 0)
arr2 = Array.new(100, 0)
a.upto(b - 1){|i| arr1[i] = 1}
c.upto(d - 1){|i| arr2[i] = 1}

count = 0
arr1.zip(arr2){|i, j| count += i * j}
puts count