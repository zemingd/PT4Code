N = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)
C = gets.chomp.split.map(&:to_i)
# s = gets.chomp
# A, B, C = gets.chomp.split.map(&:to_i)

# p N
# p A
# p B
# p C

A = a.map { |i| i - 1 }
# dishes are 0..(N-1)
goodness = {}  # dish_id => 
B.each.with_index do |b, i|
  goodness[i] = b
end

more = {}
C.each.with_index do |c, i|
  more[i] = c
end
  
r = 0
A.each.with_index do |dish_id, i|
  r += goodness[dish_id]
  
  if (i < (N-1)) && (dish_id <= N - 2) && (A[i] + 1 == A[i+1])   # e.g. A[i] is 0, A[i+1] = 1
    r += C[dish_id]
  end
end

p r
