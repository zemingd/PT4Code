X, Y, Z, K = gets.split.map(&:to_i)
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)

ab = []
A.each do |a|
  B.each do |b|
    ab << a + b
  end
end
ab.sort_by! { |v| -v }.first(K)

abc = []
ab.each do |ab|
  C.each do |c|
    abc << ab + c
  end
end

abc.sort_by! { |v| -v }.first(K).each do |v|
  puts v
end