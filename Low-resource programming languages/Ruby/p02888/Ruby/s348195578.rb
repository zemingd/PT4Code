n = gets.to_i
l_arr = gets.split.map(&:to_i)

l_arr.sort!
count = 0
(0..n-3).each do |i|
  (i+1..n-2).each do |j|
    two_l = l_arr[i] + l_arr[j]
    count += (l_arr[j+1..-1] + [Float::INFINITY]).bsearch_index{|e| two_l <= e}.to_i
  end
end
puts count