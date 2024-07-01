n, m = gets.chomp.split.map(&:to_i)
# 全て自然数にして並び替え
x_a = gets.chomp.split.map{|x| x.to_i + 10 ** 5}.sort_by{|x| x}

result = 0
# n >= mならば最初の時点で完了している
if n >= m
  puts result
  exit
end

if x_a.uniq.length == 2
  puts x_a.first - x_a.last
  exit
end

# 間隔が前からどのくらいあるのか
diff_map = []
x_a.each_cons(2) do |x1, x2|
  diff_map << x2 - x1
end

diff_stack = diff_map.sort_by{|diff| diff}
diff_stack.slice(0, m - n).each do |diff|
  result += diff
end
puts result