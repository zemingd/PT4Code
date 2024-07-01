n = gets.chop.to_i
num = gets.chop.split.map(&:to_i)

cnt = 0

##インデックスがほしいときはeach_with_indexを使う
num.each_with_index{|value, index|
  if value != index+1
    cnt += 1
  end
}

if cnt > 2
  puts "NO"
else
  puts "YES"
end
