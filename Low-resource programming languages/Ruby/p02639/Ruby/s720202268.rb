number = gets.strip.split(nil).map(&:to_i)
#.split(nil)は空白で入力を区切って配列化する。
i = 0
while i <= 4 do
  if number[i] == 0 then
    break
  else
    i += 1
  end
end
puts i+1