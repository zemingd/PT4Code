n = gets.to_i
renga = gets.split(' ').map(&:to_i)
answer = 0
 
(1..n).each do |_s|
  renga.size.times.each do |i|
    next if a[i] == i+1
    renga.delete_at(i)
    answer += 1
    break
  end
end
 
puts answer == n ? -1 : answer
