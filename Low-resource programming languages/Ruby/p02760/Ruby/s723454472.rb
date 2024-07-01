ary = []
3.times do
  ary << gets.split(" ").map(&:to_i)
end
 
n = gets.chomp.to_i
ary_b = []
n.times do
  ary_b << gets.chomp.to_i
end
 
ary_bingo = ary
 
 
3.times do |i|
  ary_bingo << [ary[0][i], ary[1][i], ary[2][i]]
end
 
ary_bingo << [ary[0][0], ary[1][1], ary[2][2]]
ary_bingo << [ary[0][2], ary[1][1], ary[2][0]]
 
array_shaffle = []
ary_b.permutation(3) do |x|
  array_shaffle << x
end
 
if (ary_bingo & ary_shaffle).size != 0
  puts "Yes"
else
  puts "No"
end
