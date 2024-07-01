n = gets.to_i
renga = gets.split(' ').map(&:to_i)
answer = 0

renga.size.times.each do |i|
 while renga[i] == i+1 do
  renga.delete_at(i)
  answer += 1
 end
end
 
puts answer == n ? -1 : answer
