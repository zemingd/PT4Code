n = gets.to_i               # 単一整数
ary = gets.chomp.split.map(&:to_i)  # スペースで区切られた複数の整数
ary.sort!

fl = 1		#フラグ

for num in 0..n-1 do
  if ary[num] % 2 == 0 then
    if (ary[num] % 3 == 0) || (ary[num] % 5 == 0) then
      fl = 1
    else
      fl = 0
      break
    end    
  end
end

if fl == 0 then
  puts "DENIED"
elsif fl == 1 then
  puts "APPROVED"
else
  puts "APPROVED"
end