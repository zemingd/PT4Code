N = gets.strip.split.map(&:to_i)[0]
X = gets.strip.split.map(&:to_i)

sorted_x = X.sort

X.each do |element|
  tmp_arr = sorted_x.dup
  index = tmp_arr.index(element)
  tmp_arr.delete_at(index)
  puts tmp_arr.sort[(N-1)/2]

#  puts'---'
  
end

