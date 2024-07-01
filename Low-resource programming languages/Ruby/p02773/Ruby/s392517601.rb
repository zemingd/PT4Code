dict = Hash.new{|h,k| h[k] = 0}
n = gets.to_i
(1..n).each do
  str = gets.chomp
  dict[str] += 1
end

max = dict.max_by {|k, v| v}
filtered = dict.select {|k, v| v == max[1]}
strings = filtered.map {|arr| arr[0]}.sort

strings.each do |str|
  puts str
end
