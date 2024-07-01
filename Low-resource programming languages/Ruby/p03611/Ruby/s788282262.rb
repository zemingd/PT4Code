n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i).sort
table = {}
arr.each do |ai|
  if table.has_key?(ai)
    table[ai] += 1
  else
    table[ai] = 1
  end
end
# 最頻値の+-1の数とそのtable[+-1]の数を調べる。
# ↑間違い 2 2 2 4 4 5 5 6 6 7 7とか
# なので、出てきたやつを試していく
max_count = 1

table.keys.each do |ai|
  temp = 0
  [-1, 0, 1].each do |i|
    if table.has_key?(ai+i)
      temp+=table[ai+i]
    end
  end
  max_count = [max_count, temp].max
end
puts max_count