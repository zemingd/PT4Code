N = gets.strip.split.map(&:to_i)[0]
X = gets.strip.split.map(&:to_i)

X.each_with_index do |element, index|
  tmp_arr = X.dup
  tmp_arr.delete_at(index)
  puts tmp_arr.sort[(N-1)/2]

#  puts'---'
  
end

