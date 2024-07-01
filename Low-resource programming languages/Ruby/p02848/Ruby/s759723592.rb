$n = gets.chomp.to_i
str = gets.chomp


# 65が起点
def change_chr(str,n)
  i = str.codepoints[0]
  shift = ((i-65) + n) % 26
  (65+ shift).chr
end

puts str.split("").map{|elem| change_chr(elem,$n)}.inject(&:+)
