n = gets.chomp.to_i
ary = gets.split(" ").map(&:to_i)
 
max = ary.max
min = ary.min
 
j = 0
sum = 0
 
min.upto(max) do |i|
  ary.each do |x|
    if i == x || i == x + 1 || i == x - 1
      j += 1
    end
    if j > sum
      sum = j
    end
  end
  j = 0
end
 
puts sum
