# 整数の入力
page_num = gets.to_i

print_num = page_num / 2

if page_num % 2 != 0
  print_num += 1 
end

# 出力
print(print_num)