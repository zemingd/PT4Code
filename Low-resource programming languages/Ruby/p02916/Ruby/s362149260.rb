N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

sum = B.inject(:+)

A.each_cons(2) do |a|
  if a[1] - a[0] == 1
    sum += C[(a[0]-1)]
  end
end
  
puts sum