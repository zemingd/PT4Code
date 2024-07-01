A,B = gets.chomp.split.map(&:to_i)
cnt = 0
(A..B).each do |n|
  if n == n.to_s.chars.reverse.join.to_i
    cnt +=1
  end
end

puts cnt
