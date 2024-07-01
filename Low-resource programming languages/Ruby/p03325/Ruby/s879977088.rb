N = gets.to_i
A = gets.split.map(&:to_i)

tot = 0
A.each do |a|
  if a % 2 == 0
    tot += 1
    a /= 2
    redo
  end 
end

puts tot