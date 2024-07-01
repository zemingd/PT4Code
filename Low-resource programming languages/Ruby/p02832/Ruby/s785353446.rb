n = gets.to_i
renga = gets.split(' ').map(&:to_i)
answer = 0

def broken(renga, i)
  return renga if renga[i] == i + 1
  broken(renga.delete_at(i), i)
end

renga.each_with_index do |a, i|
 next if a == i+1

 renga = broken(renga, i)
end

answer = n == renga.size ? -1 : n - renga.size
puts answer
