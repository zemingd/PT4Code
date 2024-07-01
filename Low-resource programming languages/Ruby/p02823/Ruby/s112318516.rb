ary1 = gets.chomp.split(" ").map(&:to_i)
n = ary1[0]
a = ary1[1]
b = ary1[2]
dist = (a-b).abs

if dist % 2 ==0
  puts (a-b)/2
else
  ##lefcase
  left_pos = [a,b].min
  right_pos = [a,b].max
  leftcase = left_pos  + (right_pos-left_pos-1)/2
  ##rightcase
  a1 = n+1-a
  b1 = n+1-b
  left_pos1 = [a1,b1].min
  right_pos1 = [a1,b1].max
  rightcase =  left_pos1  + (right_pos1-left_pos1-1)/2
  #puts [leftcase,rightcase].min
  puts leftcase
end
