n = gets.chomp.to_i
l_list = gets.chomp.split.map(&:to_i)

l_list.sort!

ans = 0

(0..(n-3)).each do |i|
  ((i+1)..(n-2)).each do |j|
    tmp = l_list[i] + l_list[j]
    idx = l_list.bsearch_index{|k| k >= tmp}
    if idx.nil?
      ans += n - 1 - j
    else
      ans += idx - j - 1
    end
  end
end

puts ans
