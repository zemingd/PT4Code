n = gets.to_i
renga = gets.split(' ').map(&:to_i)
answer = 0

for i in 1..n do
  index = renga.find_index(i)
  break if index.nil?
  
  delete_size = index - (i-1)
  renga.slice!(i-1, delete_size)
  answer += delete_size
end

puts answer

