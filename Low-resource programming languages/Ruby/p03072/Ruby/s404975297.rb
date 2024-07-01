n = gets.to_i
mountains = gets.split(' ').map(&:to_i)

result = mountains.each_cons(2).find_index{|h1,h2| h1 > h2 }
if result.nil?
  result = n
else
  result += 1
end
puts result