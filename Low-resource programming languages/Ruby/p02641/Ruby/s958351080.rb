x, n = gets.split.map(&:to_i)
if n == 0
  puts x
  exit
end
p = gets.split.map(&:to_i)

if x < 1 || 100 < x
  puts x
  exit
end

list = (1..100).to_a - p # 候補のリスト
if list == []
  if x <= 50
    puts 0
  else
    puts 101
  end
  exit
end
diff_list = list.map { |a| (a - x).abs } # 差分のリスト
index = diff_list.find_index(diff_list.min)
puts list[index]
