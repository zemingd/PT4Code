# 最頻値+-1する。
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
koho = []
biggest_one = table.values.max
# ありえるのは最頻値の+-1なので候補に追加しておく
table.each do |k, v|
  if v==biggest_one
    koho << k-1 << k << k+1
  end
end
koho.uniq!
# 最頻値の+-1の数とそのtable[+-1]の数を調べる。
max_count = 0
koho.each do |mi|
  if table.has_key?(mi)
    # puts "#{mi}の周囲"
    count = 0
    [-1, 0, 1].each do |i|
      if table.has_key?(mi+i)
        count+=table[mi+i]
      end
    end
    # puts "#{mi}の周囲の合計 #{count}"
    max_count = [max_count, count].max
  end
end

puts max_count