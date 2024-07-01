# Atcoder国では、郵便番号は A+B+1 文字からなり、
# A+1 文字目はハイフン -、それ以外の全ての文字は 0 以上 9 以下の数字です。
# 文字列 S が与えられるので、Atcoder国の郵便番号の形式を満たすかどうか判定してください。

input_line_1 = gets.chomp.split
s = gets.chomp

a = input_line_1[0].to_i
b = input_line_1[1].to_i

result = "Yes"
numbers = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]

a.times do |i|
  unless numbers.include?(s[i])
    result = "No"
    break
  end
end

if result != "No"
  if s[a] == "-"
    b.times do |i|
      unless numbers.include?(s[a + i + 1])
        result = "No"
        break
      end
    end
  else
    result = "No"
  end
end

puts result
