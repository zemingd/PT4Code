a, _ = gets.chomp.split.map(&:to_i)
like_count = []
a.times do
  tmp_array = gets.chomp.split.map(&:to_i)
  like_count.push(tmp_array)
end

matched_list = []
like_count.each_with_index do |l, i|
  matched_list = l[1..l.length] if i == 0
  matched_list.each do |m|
    matched_list.delete(m) unless l[1..l.length].include?(m)
  end
end

print matched_list.length
