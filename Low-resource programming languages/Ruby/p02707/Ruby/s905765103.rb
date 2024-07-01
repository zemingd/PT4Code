N = gets.chomp.to_i               # 単一整数
ary = gets.chomp.split.map(&:to_i)  # スペースで区切られた複数の整数
N.freeze

newary = ary.uniq

for num in 1..N do
  #値が存在するかチェックする、存在しない場合は0を返す。
  if newary.count(num) == 0 then
    puts "0"
  else
    puts ary.count(num)  
  end
end