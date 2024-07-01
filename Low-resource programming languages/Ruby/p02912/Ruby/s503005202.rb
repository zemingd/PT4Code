n,m = gets.chomp.split(" ").map(&:to_i)
a_arr = gets.chomp.split(" ").map(&:to_i).sort_by{|a| -a}
arr = [a_arr]

while m >= 1 do
  m -= 1
  a = a_arr.shift
  a /= 2
  index = a_arr.bsearch_index{|x| a >= x}
  if index.nil? then
    a_arr << a
  elsif m >= index
    a_arr.insert(index, a)
    (0..(index-1)).each do |i|
      a_arr[i] /= 2
    end
    a_arr = a_arr.sort_by{|a| -a}
    m -= index
  else
    a_arr.insert(index, a)
    (0..(m-1)).each do |i|
      a_arr[i] /= 2
    end
    m = 0
  end
end

puts a_arr.inject(&:+)


