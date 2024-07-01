a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
d = gets.chomp.to_i
e = gets.chomp.to_i
arr = [a,b,c,d,e]
smallest = 10000
[*0..4].permutation(5){|i|
  time = 0
  i.each_with_index{|j, ind|
    time += arr[j]
    if(time % 10 > 0 && ind < 4)
      time += 10
      time -= time % 10
    end
  }
  smallest = [time, smallest].min
}
puts smallest
