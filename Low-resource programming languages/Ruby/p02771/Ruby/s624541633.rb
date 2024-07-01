# 入力
n = gets.to_i
a = gets.chomp.split.map(&:to_i)
# 配列から偶数をだす
even = a.select{|x|x%2==0}

# 3と５で割れるかの判定
flag = true
even.each do|i|
 if i%3==0 || i%5==0
    flag = true
 else
    flag = false
 end
end

if flag
   puts "APPROVED"
else
   puts "DENIED"
end