x = gets.split.map(&:to_i)  # スペースで区切られた複数の整数
for num in 0..x.length-1 do
  if x[num] == 0 then
    puts num + 1
  end
end